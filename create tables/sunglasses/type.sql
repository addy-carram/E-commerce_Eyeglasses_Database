CREATE TABLE Sunglasses_Lens_Type (
    id_lens_type INT PRIMARY KEY IDENTITY(1,1),
    type_name VARCHAR(50) NOT NULL UNIQUE,
    description NVARCHAR(200)
);

INSERT INTO Sunglasses_Lens_Type (type_name, description) VALUES 
('standard', 'Basic tinted lenses'),
('polarized', 'Eliminates glare from reflective surfaces'),
('photochromic (transitions)', 'Darkens automatically in sunlight'),
('mirror', 'Reflective coating on lens surface'),
('gradient', 'Dark at top, lighter at bottom'),
('double gradient', 'Dark at top and bottom, lighter in middle'),
('anti-reflective back coating', 'Reduces reflections from behind');