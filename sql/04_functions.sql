-- =============== GROUP A: FUNCTIONS OF BILL CALCULATIONS ===============
-- These functions will be used to calculate the different amounts of a bill.

-- 1. Function to calculate the shipping cost of an online order.
-- Suggested name: calculate_shipping_cost(order_id INTEGER)
-- RETURNS DECIMAL
CREATE FUNCTION calculo_costo_envio(orden_online_id INTEGER)
RETURNS DECIMAL 
AS $$
$$

-- 2. Function to calculate the subtotal of a bill (sum of product prices before discounts and VAT).
-- Suggested name: calculate_subtotal_bill(bill_id INTEGER)
-- RETURNS DECIMAL


-- 3. Function to calculate the total discount amount applicable to a bill.
-- Suggested name: calculate_total_discount(bill_id INTEGER)
-- RETURNS DECIMAL


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