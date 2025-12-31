CREATE TABLE Gender_Type (
    id_gender INT PRIMARY KEY IDENTITY(1,1),
    gender_name VARCHAR(20) NOT NULL UNIQUE
);

INSERT INTO Gender_Type (gender_name) VALUES 
('men'),
('women'),
('unisex'),
('kids'),
('boys'),
('girls');
