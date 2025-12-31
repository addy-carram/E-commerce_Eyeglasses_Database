

CREATE ROLE db_sales_europtica;


CREATE ROLE db_hr_europtica;


GRANT SELECT ON Product TO db_sales_europtica;
GRANT SELECT ON Frame TO db_sales_europtica;
GRANT SELECT ON Lens TO db_sales_europtica;
GRANT SELECT ON Contact_Lens TO db_sales_europtica;
GRANT SELECT ON Eyeglasses TO db_sales_europtica;
GRANT SELECT ON Sunglasses TO db_sales_europtica;
GRANT SELECT ON Product_Type TO db_sales_europtica;

GRANT SELECT, INSERT, UPDATE, DELETE ON Employee TO db_hr_europtica;
GRANT SELECT, INSERT, UPDATE, DELETE ON Employee_Role TO db_hr_europtica;
--on schema
GRANT SELECT ON SCHEMA::Products TO db_sales_europtica;
GRANT SELECT ON SCHEMA::HR TO db_hr_europtica;

CREATE LOGIN vanzator
WITH PASSWORD = 'vanzator';
     


CREATE LOGIN HR
WITH PASSWORD = 'HR';
    
CREATE USER vanzator_user FOR LOGIN vanzator;
CREATE USER hr_user FOR LOGIN HR;

ALTER ROLE db_sales_europtica ADD MEMBER vanzator_user;

-- maneger HR
ALTER ROLE db_hr_europtica ADD MEMBER hr_user;