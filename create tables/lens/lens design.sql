CREATE TABLE Lens_Design (
    id_lens_design INT PRIMARY KEY IDENTITY(1,1),
    design_name VARCHAR(50) NOT NULL UNIQUE,
    description NVARCHAR(200)
);

INSERT INTO Lens_Design (design_name, description) VALUES 
('single vision spherical', 'Basic single focus lens'),
('single vision aspherical', 'Flatter, thinner design'),
('bifocal', 'Two zones: distance and reading'),
('trifocal', 'Three zones: distance, intermediate, reading'),
('progressive (multifocal)', 'Gradual transition, no visible line'),
('digital/freeform', 'Computer-optimized design');