CREATE TABLE Contact_Lens_Base_Curve (
    id_base_curve INT PRIMARY KEY IDENTITY(1,1),
    base_curve_value DECIMAL(3,1) NOT NULL UNIQUE,
    curvature_type VARCHAR(20) -- flat, medium, steep
);

INSERT INTO Contact_Lens_Base_Curve (base_curve_value, curvature_type) VALUES 
(8.3, 'steep'),
(8.4, 'steep'),
(8.5, 'medium'),
(8.6, 'medium'),
(8.7, 'medium'),
(8.8, 'flat'),
(9.0, 'flat');