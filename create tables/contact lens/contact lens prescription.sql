CREATE TABLE Contact_Lens_Prescription_Type (
    id_prescription_type INT PRIMARY KEY IDENTITY(1,1),
    type_name VARCHAR(30) NOT NULL UNIQUE,
    description NVARCHAR(200)
);
SELECT *FROM Contact_Lens_Prescription_Type

INSERT INTO Contact_Lens_Prescription_Type (type_name, description) VALUES 
('spherical', 'For myopia or hyperopia only'),
('toric', 'For astigmatism correction'),
('multifocal', 'For presbyopia (reading + distance)'),
('colored/cosmetic', 'Cosmetic lenses with or without prescription');
