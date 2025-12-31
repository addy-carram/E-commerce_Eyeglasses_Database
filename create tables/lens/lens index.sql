CREATE TABLE Lens_Index (
    id_lens_index INT PRIMARY KEY IDENTITY(1,1),
    index_value DECIMAL(3,2) NOT NULL UNIQUE,
    thickness_category VARCHAR(30),
    recommended_for NVARCHAR(200)
);

INSERT INTO Lens_Index (index_value, thickness_category, recommended_for) VALUES 
(1.50, 'standard', 'Low prescriptions: -2.00 to +2.00'),
(1.56, 'thin', 'Mild prescriptions: -3.00 to +3.00'),
(1.60, 'thinner', 'Moderate prescriptions: -4.00 to +4.00'),
(1.67, 'ultra-thin', 'High prescriptions: -6.00 to +6.00'),
(1.74, 'super-thin', 'Very high prescriptions: -8.00 and above');