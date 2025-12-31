


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