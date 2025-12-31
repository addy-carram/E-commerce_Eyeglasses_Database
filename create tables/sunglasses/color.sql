CREATE TABLE Sunglasses_Lens_Color (
    id_lens_color INT PRIMARY KEY IDENTITY(1,1),
    color_name VARCHAR(50) NOT NULL UNIQUE,
    benefits NVARCHAR(200)
);

INSERT INTO Sunglasses_Lens_Color (color_name, benefits) VALUES 
('gray', 'True color perception, reduces brightness'),
('brown/amber', 'Enhances contrast, good for sports'),
('green', 'Natural color balance, reduces glare'),
('yellow', 'Enhances contrast in low light, fog'),
('rose/red', 'Increases contrast, good for water sports'),
('blue', 'Fashion, reduces glare'),
('gradient', 'Dark on top, lighter at bottom'),
('mirror silver', 'Reflective coating, extra glare reduction'),
('mirror gold', 'Warm tone, reduces glare'),
('mirror blue', 'Cool tone, stylish look');
