CREATE TABLE Payment_Status (
    id_payment_status INT PRIMARY KEY IDENTITY(1,1),
    status_name VARCHAR(50) NOT NULL, -- cash, card, bank_transfer, online
    is_active BIT DEFAULT 1,
    description TEXT
);

INSERT INTO Payment_Status(status_name) VALUES 
('proccesing'),
('ready'),
('cancelled'),
('refund'),
('yes');