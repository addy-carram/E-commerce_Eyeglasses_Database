CREATE TABLE Frame_Shape (
    id_shape INT PRIMARY KEY IDENTITY(1,1),
    shape_name VARCHAR(50) NOT NULL UNIQUE
);

INSERT INTO Frame_Shape (shape_name) VALUES 
('aviator'),
('wayfarer'),
('round'),
('cat-eye'),
('rectangle'),
('oval'),
('square'),
('browline'),
('geometric'),
('hexagonal');