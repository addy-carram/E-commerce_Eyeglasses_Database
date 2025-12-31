CREATE TABLE Frame_Size (
    id_size INT PRIMARY KEY IDENTITY(1,1),
    size_name VARCHAR(20) NOT NULL UNIQUE,
    description NVARCHAR(100)
);

INSERT INTO Frame_Size (size_name, description) VALUES 
('small', 'Lens width 48-51mm'),
('medium', 'Lens width 52-54mm'),
('large', 'Lens width 55-58mm'),
('extra-large', 'Lens width 59mm+');