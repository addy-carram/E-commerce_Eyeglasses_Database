CREATE TABLE Employee (
    id_employee INT PRIMARY KEY IDENTITY(1,1),
    first_name NVARCHAR(100) NOT NULL,
    last_name NVARCHAR(100) NOT NULL,
	id_role INT REFERENCES Employee_Role(id_role),
    phone VARCHAR(20) CHECK (
        phone LIKE '+373[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' OR
        phone LIKE '0[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'
    ),
    email VARCHAR(100) UNIQUE CHECK (email LIKE '%_@__%.__%'),
    hire_date DATE DEFAULT GETDATE(),
    salary DECIMAL(10,2),
    is_active BIT DEFAULT 1

);