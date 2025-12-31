CREATE TABLE Eyeglasses_Type (
    id_eyeglasses_type INT PRIMARY KEY IDENTITY(1,1),
    type_name VARCHAR(50) NOT NULL UNIQUE,
    description NVARCHAR(200)
);

INSERT INTO Eyeglasses_Type (type_name, description) VALUES 
('reading glasses', 'For close-up work and reading'),
('prescription glasses', 'Custom prescription for vision correction'),
('computer glasses', 'Optimized for digital screen use'),
('distance glasses', 'For far vision (driving, TV)'),
('bifocal glasses', 'Two zones: distance and reading'),
('progressive glasses', 'Multifocal without visible lines'),
('safety glasses', 'Protective eyewear with prescription'),
('sports glasses', 'Durable prescription glasses for sports');