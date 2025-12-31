CREATE TABLE Frame (
    id_frame INT PRIMARY KEY IDENTITY(1,1),
    
    -- Foreign Keys to Lookup Tables
   id_product INT REFERENCES Product(id_product) ON DELETE CASCADE,
    id_material INT REFERENCES Frame_Material(id_material),
    id_frame_type INT REFERENCES Frame_Type(id_frame_type),
    id_shape INT REFERENCES Frame_Shape(id_shape),
    id_color INT REFERENCES Frame_Color(id_color),
    id_finish INT REFERENCES Frame_Finish(id_finish),
    id_size INT REFERENCES Frame_Size(id_size),
    id_gender INT REFERENCES Gender_Type(id_gender),
    
    -- Measurements (mm)
    lens_width INT,
    bridge_width INT,
    temple_length INT,
    
    -- Features (BIT = Boolean in SQL Server)
    spring_hinges BIT DEFAULT 0,
    adjustable_nose_pads BIT DEFAULT 0,
    flexible BIT DEFAULT 0,
    hypoallergenic BIT DEFAULT 0,
    
    price DECIMAL(10,2) CHECK(price>0),
    
);