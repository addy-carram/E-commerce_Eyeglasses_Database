---see all orders with details

SELECT 
    o.id_order,
    p.first_name + ' ' + p.last_name AS client,
    prod.model_name AS produs,
    pt.type_name AS tip_produs,
    o.total_amount AS pret,
    os.status_name AS status,
    ps.status_name AS plata
FROM Order_Table o
 JOIN Patient p ON o.id_patient = p.id_patient
 JOIN Product prod ON o.id_product = prod.id_product
 JOIN Product_Type pt ON prod.id_product_type = pt.id_product_type
 JOIN Order_Status os ON o.id_order_status = os.id_order_status
 JOIN Payment_Status ps ON o.id_payment_status = ps.id_payment_status
ORDER BY o.order_date DESC;
