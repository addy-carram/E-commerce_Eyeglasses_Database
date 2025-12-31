CREATE TABLE Contact_Lens (
    id_contact_lens INT PRIMARY KEY IDENTITY(1,1),
     id_product INT REFERENCES Product(id_product) ON DELETE CASCADE,
    
    -- Foreign Keys to Lookup Tables
	id_contact_lens_type INT REFERENCES Contact_Lens_Type(id_contact_lens_type),
    id_cl_material INT REFERENCES Contact_Lens_Material(id_cl_material),
    id_prescription_type INT REFERENCES Contact_Lens_Prescription_Type(id_prescription_type),
    id_base_curve INT REFERENCES Contact_Lens_Base_Curve(id_base_curve),
    id_diameter INT REFERENCES Contact_Lens_Diameter(id_diameter),
    
    -- Prescription values
    diopter_sphere DECIMAL(5,2), -- for myopia/hyperopia (-12.00 to +8.00)
    diopter_cylinder DECIMAL(5,2), -- for toric (astigmatism)
    axis INT CHECK (axis >= 0 AND axis <= 180), -- for toric lenses
    addition DECIMAL(4,2), -- for multifocal lenses
    
    -- Technical specifications
    water_content INT CHECK (water_content >= 20 AND water_content <= 80), -- 38-78%
    oxygen_permeability INT, -- Dk/t value (higher = better)
    
    -- Packaging
    lenses_per_box INT, -- typically 30, 90, etc.
    
    price DECIMAL(10,2)
);