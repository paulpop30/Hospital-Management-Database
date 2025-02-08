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
CREATE PROCEDURE dbo.AddMedicationTreatment
    @ID_MEDICAMENT INT,
    @BOALA NVARCHAR(255),
    @Perioada_Tratament DATETIME,
    @DozaPeZi FLOAT,
    @TipMedicament NVARCHAR(255),
    @MEDICAMENTE NVARCHAR(255),
    @PACIENTII_ID INT,
    @GRAVITATE INT,
    @MEDICAMENTE_TIP NVARCHAR(255),
    @PROVENIENTA NVARCHAR(255)
AS
BEGIN
    -- Validate if the medication exists
    IF dbo.CheckMedicationExists(@ID_MEDICAMENT) = 1
    BEGIN
        PRINT 'Error: Medication already exists in MEDICAMENTATIE table.';
        RETURN;
    END

    -- Validate the dose
    IF dbo.ValidateDose(@DozaPeZi) = 0
    BEGIN
        PRINT 'Error: Invalid dose per day.';
        RETURN;
    END

    BEGIN TRY
        -- Insert into MEDICAMENTATIE
        INSERT INTO MEDICAMENTATIE (ID_MEDICAMENT, BOALA, Perioada_Tratament, DozaPeZi, TipMedicament, MEDICAMENTE)
        VALUES (@ID_MEDICAMENT, @BOALA, @Perioada_Tratament, @DozaPeZi, @TipMedicament, @MEDICAMENTE);
        PRINT 'New medication added successfully.';

        -- Insert into TRATAMENT
        INSERT INTO TRATAMENT (PACIENTII_ID, ID_MEDICAMENT, BOALA, GRAVITATE, MEDICAMENTE_TIP, PROVENIENTA)
        VALUES (@PACIENTII_ID, @ID_MEDICAMENT, @BOALA, @GRAVITATE, @MEDICAMENTE_TIP, @PROVENIENTA);
        PRINT 'New treatment added successfully.';
    END TRY
    BEGIN CATCH
        PRINT 'Error: Unable to insert data. Please check your inputs.';
    END CATCH
END;
GO

