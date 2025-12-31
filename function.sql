	SELECT * FROM Employee
	go
	CREATE SCHEMA EMPLOYER
	go
	CREATE VIEW EMPLOYER.vwEmployee
	AS
	 SELECT  E.id_employee,
    E.first_name,
    E.email,
    R.id_role,
    R.role_name FROM Employee  E
	 JOIN Employee_Role R on E.id_role=R.id_role
	
	go



	CREATE FUNCTION ROLEs ()
    RETURNS @Angajat_role TABLE
    (
        first_name Nvarchar(50),
		role_name Nvarchar(50)
    )
    AS
    BEGIN
        INSERT INTO @Angajat_role (first_name,role_name)
        SELECT first_name,role_name From EMPLOYER.vwEmployee 
        RETURN;
    END;

	GO

	SELECT *FROM ROLEs();
	GO

	go
	--inline function
	CREATE FUNCTION Select_ang (@Show INT)
    RETURNS TABLE
    AS
    RETURN
	SELECT * FROM EMPLOYER.vwEmployee
        WHERE id_employee=@Show
		go
	SELECT *FROM Select_ang(1)


	SELECT * FROM Order_Table

	go
	CREATE FUNCTION VENIT_ANUL (@DATA DATE)
    RETURNS INT
    AS
    BEGIN 
        DECLARE @Total INT;
        SELECT @Total = SUM(total_amount)
        FROM Order_TABLE
        WHERE YEAR(order_date) = YEAR(@DATA);
        RETURN @Total;
    END
GO

SELECT dbo.VENIT_ANUL('2025-01-15');