CREATE TABLE Contact_Lens_Type (
    id_contact_lens_type INT PRIMARY KEY IDENTITY(1,1),
    type_name VARCHAR(50) NOT NULL UNIQUE,
    replacement_days INT CHECK( replacement_days>0), -- how often to replace
    description NVARCHAR(200)
);

INSERT INTO Contact_Lens_Type (type_name, replacement_days, description) VALUES 
('daily', 1, 'Single-use, dispose after one day'),
('bi-weekly', 14, 'Replace every 2 weeks'),
('monthly', 30, 'Replace every month'),
('quarterly', 90, 'Replace every 3 months'),
('yearly', 365, 'Replace once a year');