SELECT * FROM Product
GO
UPDATE Product
SET stock_quantity=50;

go 

SELECT * FROM Raport_Profit

 ALTER TABLE Product
	ADD Venit INT,
	 TVA INT,
	 Pret_vanzari INT;
	 GO


BEGIN TRAN adaug_colomn

 ALTER TABLE Product
	ADD La_sef INT
	 GO
	

CREATE PROCEDURE Raport_Vemit_TVA_Salariu
    @procentVenit FLOAT, 
    @pretTVA FLOAT
AS
BEGIN
    BEGIN TRANSACTION Raport_Venit
    
    UPDATE Product
    SET Venit = (total_price * @procentVenit) * stock_quantity;

	SAVE TRAN Raport_1
	PRINT 'S-a realizat prima update'
	
    UPDATE Product
    SET  TVA = (total_price * @pretTVA) * stock_quantity;

	SAVE TRAN Raport_2
	PRINT 'S-a realizat doilea update'

    UPDATE Product
    SET Pret_vanzari =( total_price  * stock_quantity );
    
    PRINT 'S-au actualizat coloanele'
    COMMIT TRANSACTION Raport_Venit
END
GO

-- Execute the procedure
EXEC  Raport_Vemit_TVA_Salariu @procentVenit = 0.15, @pretTVA = 0.18;
go

	 CREATE PROCEDURE stergere @produs_sters INT
	 AS
	 BEGIN TRAN STERG
	 IF EXISTS(SELECT * FROM Product WHERE id_product =@produs_sters)
	DELETE Product
	WHERE id_product=@produs_sters
	COMMIT

	EXEC stergere  @produs_sters=10

	go

	SELECT * FROM Products.vw_Eyeglasses_Catalog

	go
	
	CREATE PROCEDURE Fara_customizare  AS

	SELECT Model,COUNT(model) AS Modele_asemanatoare
	FROM  Products.vw_Eyeglasses_Catalog
	GROUP BY model
	go

	EXEC Fara_customizare

	go


EXEC Update_stock_quantity @procentsef=3;

go 

CREATE PROCEDURE Sef_salariu
	@procentsef FLOAT
AS
BEGIN
    BEGIN TRANSACTION Raport_Venit
    
    UPDATE Product
    SET la_sef = Pret_vanzari*@procentsef;

    COMMIT TRANSACTION Raport_Venit
END

GO

EXEC Sef_salariu @procentsef=0.01;