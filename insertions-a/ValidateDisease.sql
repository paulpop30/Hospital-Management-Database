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

-- Function to validate the format of the disease (BOALA)
CREATE FUNCTION dbo.ValidateDisease(@BOALA NVARCHAR(255))
RETURNS BIT
AS
BEGIN
    DECLARE @IsValid BIT
    IF LEN(@BOALA) > 0 AND @BOALA NOT LIKE '%[^a-zA-Z ]%'
        SET @IsValid = 1
    ELSE
        SET @IsValid = 0
    RETURN @IsValid
END;
GO
