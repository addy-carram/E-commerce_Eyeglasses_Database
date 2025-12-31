CREATE TABLE Order_Status (
    id_order_status INT PRIMARY KEY IDENTITY(1,1),
    status_name VARCHAR(20) NOT NULL UNIQUE
);

INSERT INTO Order_Status (status_name) VALUES 
('pending'),
('processing'),
('ready'),
('completed'),
('cancelled');