


CREATE TRIGGER prevent_table_creation
ON DATABASE
FOR CREATE_TABLE, ALTER_TABLE, DROP_TABLE
AS 
BEGIN
   PRINT 'you can not create, drop and alter table in this database';
   ROLLBACK;
END;

go

CREATE TRIGGER without_update on Employee_Role
 FOR UPDATE
 AS
 IF UPDATE(role_name)
	BEGIN
		RAISERROR('Nu se permite modificare numelui rolului!', 16, 1)   
		ROLLBACK

		END
		GO

UPDATE Employee_Role
SET role_name='doctor'
WHERE role_name='doctor'

go

CREATE TRIGGER Modif_DELETE on Employee
 AFTER UPDATE , DELETE
 AS
 BEGIN
 IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
    BEGIN
        PRINT 'the date was updated';
		END

IF NOT EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
    BEGIN
        PRINT 'the date was deleted';
		END
		END

SELECT * FROM Employee

go

CREATE TRIGGER Status_5 ON Payment_Status
INSTEAD OF INSERT, UPDATE, DELETE
AS
BEGIN
    RAISERROR('it's not allowed to update,delete', 16, 1);
END
GO

INSERT INTO Payment_Status(status_name)
VALUES ('Value10');


select * from Payment_Status

go

---history page 
CREATE TRIGGER trg_set_updated_at_product
ON Product
AFTER UPDATE,DELETE ,INSERT
AS
BEGIN
    UPDATE history
    SET updated_at = GETDATE()
    WHERE id IN (SELECT id FROM inserted);
END;

CREATE TABLE history (
    id INT PRIMARY KEY IDENTITY(1,1),
    tabela VARCHAR(50),
    operatie VARCHAR(20),
    id_inregistrare INT,
    data_actiune DATETIME DEFAULT GETDATE(),
    detalii TEXT,
    data_hash VARCHAR(255)
);