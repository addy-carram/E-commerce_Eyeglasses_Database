CREATE TABLE Payment_Method (
    id_payment_method INT PRIMARY KEY IDENTITY(1,1),
    method_name VARCHAR(50) NOT NULL, -- cash, card, bank_transfer, online
    is_active BIT DEFAULT 1,
    description TEXT
);

INSERT INTO Payment_Method(method_name) VALUES 
('cash'),
('card'),
('bank_transfer'),
('online'),
('cancelled');
