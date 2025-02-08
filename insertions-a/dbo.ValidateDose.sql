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
CREATE FUNCTION dbo.ValidateDose(@DozaPeZi FLOAT)
RETURNS BIT
AS
BEGIN
    DECLARE @IsValid BIT
    IF @DozaPeZi > 0 AND @DozaPeZi <= 10 -- Valid range
        SET @IsValid = 1
    ELSE
        SET @IsValid = 0
    RETURN @IsValid
END;
GO

