CREATE TABLE Sunglasses (
    id_sunglasses INT PRIMARY KEY IDENTITY(1,1),
    id_product INT REFERENCES Product(id_product) ON DELETE CASCADE,
    frame NVARCHAR(100) NOT NULL,
    id_uv_protection INT REFERENCES UV_Protection_Level(id_uv_protection),
    id_filter_category INT REFERENCES Sunglasses_Filter_Category(id_filter_category),
    id_lens_color INT REFERENCES Sunglasses_Lens_Color(id_lens_color),
    id_lens_type INT REFERENCES Sunglasses_Lens_Type(id_lens_type),
    
    -- Features (BIT = Boolean in SQL Server)
    polarized BIT DEFAULT 0, -- 1 = yes, 0 = no
    with_prescription BIT DEFAULT 0, -- 1 = can add Rx lenses, 0 = non-prescription only
    
    price DECIMAL(10,2),
);
