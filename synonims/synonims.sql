
CREATE SYNONYM Catalog_Ochelari FOR vw_Eyeglasses_Catalog
SELECT *FROM Catalog_Ochelari WHERE Pret_Cutie>600;

CREATE SYNONYM Catalog_Ochelari_de_soare FOR vw_Sunglasses_Catalog
SELECT *FROM Catalog_Ochelari_de_soare WHERE Pret_Cutie>600;

CREATE SYNONYM Catalog_Contact_lens FOR vw_Contact_Lens_Catalog
SELECT *FROM Catalog_Contact_lens WHERE Pret_Cutie>80;

CREATE SCHEMA HR;          
CREATE SCHEMA Products; 