-- =============== GROUP A: FUNCTIONS OF BILL CALCULATIONS ===============
-- These functions will be used to calculate the different amounts of a bill.

-- 1. Function to calculate the shipping cost of an online order.
-- Suggested name: calculate_shipping_cost(order_id INTEGER)
-- RETURNS DECIMAL 
CREATE FUNCTION calculo_costo_envio(orden_online_id INTEGER)
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
CREATE FUNCTION calculo_subtotal_factura(factura_id INTEGER)
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
CREATE FUNCTION calculo_descuento_total(factura_id INTEGER)
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
$$ LANGUAGE SQL ;

-- 4. Function to calculate the total VAT amount to be paid for non-exempt products.
-- Suggested name: calculate_vat_amount(bill_id INTEGER)
-- RETURNS DECIMAL


-- 5. Function to calculate the final total amount of the bill.
-- Suggested name: calculate_total_bill_amount(bill_id INTEGER)
-- RETURNS DECIMAL


-- =============== GROUP B: FUNCTIONS FOR PROMOTION VALIDATION ===============
-- This function will check if a promotion is applicable to a specific purchase.

-- 1. Function to check if a promotion is valid for a bill.
--    (Checks the date and type of promotion - Online/Physical).
-- Suggested name: verify_valid_promotion(promo_id INTEGER, bill_id INTEGER)
-- RETURNS BOOLEAN