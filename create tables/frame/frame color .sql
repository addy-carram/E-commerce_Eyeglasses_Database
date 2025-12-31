CREATE TABLE Frame_Color (
    id_color INT PRIMARY KEY IDENTITY(1,1),
    color_name VARCHAR(50) NOT NULL UNIQUE
);

INSERT INTO Frame_Color (color_name) VALUES 
('black'),
('brown'),
('tortoiseshell'),
('transparent'),
('gold'),
('silver'),
('rose gold'),
('gunmetal'),
('blue'),
('red'),
('green'),
('white'),
('multicolor');