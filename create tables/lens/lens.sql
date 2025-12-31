CREATE TABLE Lens (
    id_lens INT PRIMARY KEY IDENTITY(1,1),
    id_product INT REFERENCES Product(id_product) ON DELETE CASCADE,
    
    -- Prescription values
    diopter_sphere DECIMAL(5,2), -- plus (+) for hyperopia, minus (-) for myopia
    diopter_cylinder DECIMAL(5,2), -- for astigmatism
    axis INT CHECK (axis >= 0 AND axis <= 180), -- 0-180 degrees
    addition DECIMAL(4,2), -- for progressive/bifocal lenses
    
    -- Foreign Keys to Lookup Tables
    id_lens_material INT  REFERENCES Lens_Material(id_lens_material),
    id_lens_design INT REFERENCES Lens_Design(id_lens_design),
    id_lens_index INT REFERENCES Lens_Index(id_lens_index),
	-- Measurements
    diameter INT, -- measured in mm
   
    price DECIMAL(10,2),
    
);