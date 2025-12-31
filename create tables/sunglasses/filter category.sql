CREATE TABLE Sunglasses_Filter_Category (
    id_filter_category INT PRIMARY KEY IDENTITY(1,1),
    category_number INT NOT NULL UNIQUE CHECK (category_number >= 0 AND category_number <= 4),
    category_name VARCHAR(50),
    light_transmission NVARCHAR(20) , -- percentage of light that passes through
    recommended_use NVARCHAR(200)
);

INSERT INTO Sunglasses_Filter_Category (category_number, category_name, light_transmission, recommended_use) VALUES 
(0, 'Very light tint', '80-100%', 'Fashion, minimal sun'),
(1, 'Light tint', '43-80%', 'Light sunlight, overcast'),
(2, 'Medium tint', '18-43%', 'Average sunlight, everyday use'),
(3, 'Dark tint', '8-18%', 'Bright sunlight, beach, mountains'),
(4, 'Very dark tint', '3-8%', 'Extreme brightness, glaciers, high altitude (NOT for driving)');