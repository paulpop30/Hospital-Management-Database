-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE FUNCTION dbo.CheckMedicationExists(@ID_MEDICAMENT INT)
RETURNS BIT
AS
BEGIN
    DECLARE @Exists BIT
    IF EXISTS (SELECT 1 FROM MEDICAMENTATIE WHERE ID_MEDICAMENT = @ID_MEDICAMENT)
        SET @Exists = 1
    ELSE
        SET @Exists = 0
    RETURN @Exists
END;
GO

