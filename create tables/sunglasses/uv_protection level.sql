CREATE TABLE UV_Protection_Level (
    id_uv_protection INT PRIMARY KEY IDENTITY(1,1),
    protection_level VARCHAR(20) NOT NULL UNIQUE,
    description NVARCHAR(200)
);

INSERT INTO UV_Protection_Level (protection_level, description) VALUES 
('UV400', 'Blocks 100% of UVA and UVB rays up to 400nm'),
('100% UVA/UVB', 'Complete protection from harmful UV rays'),
('UV380', 'Blocks UV rays up to 380nm'),
('Basic UV', 'Standard UV protection');