CREATE TABLE Lens_Material (
    id_lens_material INT PRIMARY KEY IDENTITY(1,1),
    material_name NVARCHAR(50) NOT NULL UNIQUE,
    description NVARCHAR(200)
);

INSERT INTO Lens_Material (material_name, description) VALUES 
('plastic (CR-39)', 'Standard plastic, good optical clarity'),
('polycarbonate', 'Impact-resistant, lightweight'),
('trivex', 'Similar to polycarbonate, better optics'),
('hi-index 1.60', 'Thinner lens for moderate prescriptions'),
('hi-index 1.67', 'Thinner lens for high prescriptions'),
('hi-index 1.74', 'Thinnest lens for very high prescriptions'),