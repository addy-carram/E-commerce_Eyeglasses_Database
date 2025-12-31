CREATE TABLE Product_Type (
    id_product_type INT PRIMARY KEY IDENTITY(1,1),
    type_name NVARCHAR(50) NOT NULL UNIQUE
);
INSERT INTO Product_Type (type_name) VALUES 
('lens'),
('contact_lens'),
('eyeglasses'),
('sunglasses'),
('frame');