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
CREATE VIEW vw_PatientTreatmentDetails AS
SELECT 
    P.ID AS PatientID,
    P.NUME AS LastName,
    P.PRENUME AS FirstName,
    P.BOALA AS Disease,
    T.GRAVITATE AS Severity,
    T.MEDICAMENTE_TIP AS MedicationType,
    M.BOALA AS MedicationForDisease,
    M.DozaPeZi AS DosePerDay,
    M.TipMedicament AS MedicationCategory,
    M.MEDICAMENTE AS MedicationName
FROM 
    PACIENTII P
INNER JOIN 
    TRATAMENT T ON P.ID = T.PACIENTII_ID
INNER JOIN 
    MEDICAMENTATIE M ON T.ID_MEDICAMENT = M.ID_MEDICAMENT;
GO
