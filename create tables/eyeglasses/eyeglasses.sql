CREATE TABLE Eyeglasses (
    id_eyeglasses INT PRIMARY KEY IDENTITY(1,1),
    id_product INT REFERENCES Product(id_product) ON DELETE CASCADE,
    frame NVARCHAR(100) NOT NULL,
    id_eyeglasses_type INT REFERENCES Eyeglasses_Type(id_eyeglasses_type),
    price DECIMAL(10,2) CHECK (price >0),
    
    -- Optional: Store if custom-made or pre-made
    is_custom BIT DEFAULT 1, -- 1 = custom made, 0 = ready-made 
);

