CREATE TABLE Employee_Role (
    id_role INT PRIMARY KEY IDENTITY(1,1),
    role_name VARCHAR(50) NOT NULL UNIQUE,
    description NVARCHAR(200),
    requires_license BIT DEFAULT 0, -- necesită licență profesională?
    requires_specialization BIT DEFAULT 0 -- necesită specializare?
);
INSERT INTO Employee_Role (role_name, description, requires_license, requires_specialization) VALUES 
('doctor', 'Oftalmolog/Oculist - efectuează consultări și diagnostice', 1, 1),
('optician', 'Optician/Optometrist - verifică vedere și recomandă ochelari', 1, 1),
('technician', 'Tehnician - montare lentile, reparații', 0, 0),
('sales', 'Vânzător - vânzare produse', 0, 0),
('manager', 'Manager - administrare magazin', 0, 0),
('receptionist', 'Recepționer - programări, primire clienți', 0, 0);