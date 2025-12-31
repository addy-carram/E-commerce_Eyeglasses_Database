CREATE TABLE Product (
    id_product INT PRIMARY KEY IDENTITY(1,1),
    producer VARCHAR(100) NOT NULL,
    model_name VARCHAR(100) UNIQUE,
    id_product_type INT REFERENCES Product_Type(id_product_type),
    total_price DECIMAL(10,2) CHECK(total_price >0),
    stock_quantity INT,
    is_active BIT DEFAULT 1
);