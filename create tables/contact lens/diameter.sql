CREATE TABLE Contact_Lens_Diameter (
    id_diameter INT PRIMARY KEY IDENTITY(1,1),
    diameter_value DECIMAL(4,1) NOT NULL UNIQUE,
    size_category VARCHAR(20) -- small, standard, large
);

INSERT INTO Contact_Lens_Diameter (diameter_value, size_category) VALUES 
(13.8, 'small'),
(14.0, 'standard'),
(14.2, 'standard'),
(14.3, 'standard'),
(14.5, 'large');
