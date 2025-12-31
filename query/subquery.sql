
SELECT model_name, total_price
FROM Product
WHERE total_price > (
    SELECT AVG(total_price)
    FROM Product
);

SELECT first_name, last_name, email
FROM Employee
WHERE id_employee NOT IN (
    SELECT DISTINCT id_employee
    FROM Order_Table
    WHERE id_employee IS NOT NULL
);

-- subquery
SELECT frame_details.model_name, frame_details.material, frame_details.lens_width
FROM (
    SELECT p.model_name, fm.material_name AS material, f.lens_width
    FROM Frame f
    JOIN Product p ON f.id_product = p.id_product
    JOIN Frame_Material fm ON f.id_material = fm.id_material
) AS frame_details
WHERE frame_details.lens_width > 50;


---check all records
SELECT 'Patient' AS Table_Name, COUNT(*) AS Total FROM Patient
UNION ALL
SELECT 'Employee', COUNT(*) FROM Employee
UNION ALL
SELECT 'Product', COUNT(*) FROM Product
UNION ALL
SELECT 'Frame', COUNT(*) FROM Frame
UNION ALL
SELECT 'Lens', COUNT(*) FROM Lens
UNION ALL
SELECT 'Contact_Lens', COUNT(*) FROM Contact_Lens
UNION ALL
SELECT 'Eyeglasses', COUNT(*) FROM Eyeglasses
UNION ALL
SELECT 'Sunglasses', COUNT(*) FROM Sunglasses
UNION ALL
SELECT 'Order_Table', COUNT(*) FROM Order_Table;