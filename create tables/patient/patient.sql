CREATE TABLE Patient (
    id_patient INT PRIMARY KEY IDENTITY(1,1),
    first_name NVARCHAR(100) NOT NULL,
    last_name NVARCHAR(100) NOT NULL,
    
    -- Data nașterii cu validare (nu poate fi în viitor)
    date_of_birth DATE CHECK (date_of_birth <= GETDATE() and date_of_birth>'1940'),
    gender CHAR(1) CHECK (gender IN ('M', 'F')), -- M = masculin, F = feminin
    -- Telefon cu validare (+373 format Moldova)
    phone VARCHAR(20) CHECK (
        phone LIKE '+373[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' OR
        phone LIKE '0[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'
    ),
    
    email VARCHAR(100) UNIQUE CHECK (email LIKE '%_@__%.__%'),
    
    address NVARCHAR(100),
    city NVARCHAR(100),
    country NVARCHAR(50) DEFAULT 'Moldova',
    -- IDNP simplu 
    idnp VARCHAR(13) UNIQUE CHECK (LEN(idnp) = 13),
    is_active BIT DEFAULT 1
);