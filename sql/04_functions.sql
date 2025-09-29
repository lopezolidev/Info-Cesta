-- =============== GROUP A: FUNCTIONS OF BILL CALCULATIONS ===============
-- These functions will be used to calculate the different amounts of a bill.

-- 1. Function to calculate the shipping cost of an online order.
-- Suggested name: calculate_shipping_cost(order_id INTEGER)
-- RETURNS DECIMAL 
CREATE OR REPLACE FUNCTION calculo_costo_envio(orden_online_id INTEGER)
RETURNS DECIMAL 
AS $$
    SELECT 
        te.costoEnvio
    FROM 
        TipoEnvio AS te 
    JOIN 
        OrdenOnline AS oo
        ON oo.tipoEnvioId = te.id 
    WHERE     
        oo.id = orden_online_id ;
$$ LANGUAGE sql ;

-- 2. Function to calculate the subtotal of a bill (sum of product prices before discounts and VAT).
-- Suggested name: calculate_subtotal_bill(bill_id INTEGER)
-- RETURNS DECIMAL
CREATE OR REPLACE FUNCTION calculo_subtotal_factura(factura_id INTEGER)
RETURNS DECIMAL
AS $$
    SELECT 
        SUM(cantidad * precioPor)
    FROM 
        FacturaDetalle
    WHERE 
        facturaId = factura_id ;
$$ LANGUAGE SQL ;

-- 3. Function to calculate the total discount amount applicable to a bill.
-- Suggested name: calculate_total_discount(bill_id INTEGER)
-- RETURNS DECIMAL
-- tables related: FacturaDetalle, Promo, PromoEspecializada, FacturaPromo
CREATE OR REPLACE FUNCTION calculo_descuento_total(factura_id INTEGER, solo_no_exentos BOOLEAN)
RETURNS DECIMAL
AS $$
    SELECT
        COALESCE(SUM(
            CASE 
                WHEN p.tipoDescuento = 'Porcentaje'
                    THEN ( fd.precioPor * (p.valorDescuento / 100) ) * fd.cantidad
                WHEN p.tipoDescuento = 'Fijo'
                    THEN p.valorDescuento 
            END
        ), 0.00)
    FROM 
        FacturaDetalle AS fd
    JOIN 
        Producto AS prod 
        ON prod.id = fd.productoId
    JOIN 
        FacturaPromo AS fp 
        ON fp.facturaId = fd.facturaId
    JOIN 
        Promo AS p 
        ON p.id = fp.promoId
    LEFT JOIN 
        PromoEspecializada AS pe
        ON pe.promoId = fp.promoId 
    WHERE 
        fd.facturaId = factura_id
        AND
        (
            pe.id IS NULL
            OR
            pe.id IS NOT NULL AND (
                prod.id = pe.productoId
                OR
                prod.marcaId = pe.marcaId
                OR
                prod.categoriaId = pe.categoriaId
            )
        )
        AND
        (
            solo_no_exentos IS FALSE
            OR 
            prod.esExentoIVA IS FALSE    
        )
$$ LANGUAGE SQL ;

-- 4. Function to calculate the total VAT amount to be paid for non-exempt products.
-- Suggested name: calculate_vat_amount(bill_id INTEGER)
-- RETURNS DECIMAL

-- had to create this additional function which counts the subTotal for stock not excempt from VAT
CREATE OR REPLACE FUNCTION calculo_subtotalNoExentoIVA_factura(factura_id INTEGER)
RETURNS DECIMAL
AS $$
    SELECT 
        COALESCE( SUM( fd.precioPor * fd.cantidad ), 0.00)
    FROM 
        FacturaDetalle AS fd
    JOIN
        Producto AS prod ON prod.id = fd.productoId  
    WHERE 
        fd.facturaId = factura_id 
        AND 
        prod.esExentoIVA IS FALSE ;

$$ LANGUAGE SQL ;

CREATE OR REPLACE FUNCTION calculo_montoIVA(factura_id INTEGER)
RETURNS DECIMAL
AS 
$$
    DECLARE
        tasa_IVA DECIMAL := 0.16 ;
        subTotal_no_exentos DECIMAL := 0.00 ;
        totalDescuento_no_exentos DECIMAL := 0.00 ;

    BEGIN
        SELECT calculo_subtotalNoExentoIVA_factura(factura_id)
        INTO subTotal_no_exentos ;

        SELECT calculo_descuento_total(factura_id, TRUE)
        INTO totalDescuento_no_exentos ;

        RETURN GREATEST((subTotal_no_exentos - totalDescuento_no_exentos), 0) * tasa_IVA ;
    END

$$ LANGUAGE plpgsql

-- 5. Function to calculate the final total amount of the bill.
-- Suggested name: calculate_total_bill_amount(bill_id INTEGER)
-- RETURNS DECIMAL
CREATE OR REPLACE FUNCTION montoTotal(factura_id INTEGER)
RETURNS DECIMAL
AS
$$
    DECLARE 
        subTotal DECIMAL := 0.00 ;
        totalDescuento DECIMAL := 0.00 ;
        montoIVA DECIMAL := 0.00 ;
        montoEnvio DECIMAL := 0.00 ;

    BEGIN
        SELECT calculo_subtotal_factura(factura_id) 
        INTO subTotal ;

        SELECT calculo_descuento_total(factura_id, FALSE) 
        INTO totalDescuento ;

        SELECT calculo_montoIVA(factura_id)
        INTO montoIVA ;

        SELECT 
            calculo_costo_envio(oo.id)
            INTO
            montoEnvio 
        FROM
            OrdenOnline AS oo
        WHERE
            oo.facturaId = factura_id ;

        montoEnvio := COALESCE(montoEnvio, 0.00) ;

        RETURN (subTotal - totalDescuento) + montoIVA + montoEnvio ;
    END ;

$$ LANGUAGE plpgsql ;

-- =============== GROUP B: FUNCTIONS FOR PROMOTION VALIDATION ===============
-- This function will check if a promotion is applicable to a specific purchase.

-- 1. Function to check if a promotion is valid for a bill.
--    (Checks the date and type of promotion - Online/Physical).
-- Suggested name: verify_valid_promotion(promo_id INTEGER, bill_id INTEGER)
-- RETURNS BOOLEAN

CREATE OR REPLACE FUNCTION verifica_promo_valida(promo_id INTEGER, factura_id INTEGER)
RETURNS BOOLEAN
AS 
$$
    SELECT 
        (fac.fechaEmision >= pr.fechaInicio AND fac.fechaEmision <= pr.fechaFin)
        AND
        (
            (oo.id IS NOT NULL 
            AND 
            pr.tipoPromocion IN ('Online', 'Ambas'))
            OR 
            (vf.facturaId IS NOT NULL 
            AND
            pr.tipoPromocion IN ('Física', 'Ambas'))
        )
    FROM 
        FacturaPromo AS fp
        JOIN 
            Promo AS pr ON pr.id = fp.promoId
        JOIN
            Factura AS fac ON fac.id = fp.facturaId 
        LEFT JOIN
            OrdenOnline AS oo ON oo.facturaId = fp.facturaId
        LEFT JOIN 
            VentaFisica AS vf ON vf.facturaId = fp.facturaId
    WHERE 
        fp.promoId = promo_id 
        AND
        fp.facturaId = factura_id 
$$ LANGUAGE SQL ;