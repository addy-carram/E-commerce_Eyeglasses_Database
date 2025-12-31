CREATE TABLE Order_Table (
    id_order INT PRIMARY KEY IDENTITY(1,1),
    id_patient INT REFERENCES Patient(id_patient),
	id_product INT REFERENCES Product(id_product),
	id_employee INT REFERENCES Employee(id_employee),
    order_date DATETIME DEFAULT GETDATE(),
	id_order_status INT REFERENCES Order_Status,
    total_amount DECIMAL(10,2),
    id_payment_status INT REFERENCES Payment_Status,
    id_payment_method INT REFERENCES Payment_Method,
    notes TEXT
);
