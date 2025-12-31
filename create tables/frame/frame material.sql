CREATE TABLE Frame_Material (
    id_material INT PRIMARY KEY IDENTITY(1,1),
    material_name VARCHAR(50) NOT NULL UNIQUE
);

INSERT INTO Frame_Material (material_name) VALUES 
('metal'),
('plastic'),
('acetate'),
('titanium'),
('TR90'),
('wood'),
('carbon fiber'),
('mixed');