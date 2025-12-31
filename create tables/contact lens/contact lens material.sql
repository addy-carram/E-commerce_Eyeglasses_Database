CREATE TABLE Contact_Lens_Material (
    id_cl_material INT PRIMARY KEY IDENTITY(1,1),
    material_name VARCHAR(50) NOT NULL UNIQUE,
    description NVARCHAR(200)
);

INSERT INTO Contact_Lens_Material (material_name, description) VALUES 
('hydrogel', 'Soft, comfortable, lower oxygen permeability'),
('silicone hydrogel', 'High oxygen permeability, healthier for eyes'),
('rigid gas permeable (RGP)', 'Hard lens, excellent vision correction'),
('hybrid', 'RGP center with soft hydrogel edge');