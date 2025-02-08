-- Step 1: Ensure required indexes
CREATE NONCLUSTERED INDEX idx_Nume ON PACIENTII (NUME); 
--DROP INDEX idx_Nume ON PACIENTII;
-- Creates a non-clustered index on the "NUME" column of the PACIENTII table.
-- This index is used to optimize the ORDER BY clause in the query for sorting patient names.

CREATE NONCLUSTERED INDEX idx_Boala ON TRATAMENT (BOALA); 
--DROP INDEX idx_Boala ON TRATAMENT;
-- Creates a non-clustered index on the "BOALA" column of the TRATAMENT table.
-- This index is used to  optimize the WHERE clause when filtering by specific diseases.

-- Step 2: Query with JOIN, WHERE, and ORDER BY
SELECT 
    P.ID AS PacientID, 
    P.NUME AS NumePacient, 
    T.BOALA AS Diagnostic, 
    M.MEDICAMENTE AS MedicamentPrescris, 
    D.VARSTA AS VarstaPacient
-- Selecting columns from multiple tables: patient ID and name from PACIENTII, disease from TRATAMENT,
-- medication from MEDICAMENTATIE, and age from DETALIIPACIENT.

FROM 
    PACIENTII P
-- Base table PACIENTII, containing the primary list of patients.

INNER JOIN 
    TRATAMENT T ON P.ID = T.PACIENTII_ID
-- Joining TRATAMENT table on PACIENTII_ID, which is a foreign key referencing PACIENTII(ID).
-- Likely uses a clustered index seek on PACIENTII.ID (primary key) and TRATAMENT.PACIENTII_ID.

INNER JOIN 
    DETALIIPACIENT D ON P.ID = D.PACIENTII_ID
-- Joining DETALIIPACIENT table on PACIENTII_ID, which is a foreign key referencing PACIENTII(ID).
-- Likely uses a clustered index seek on PACIENTII.ID and DETALIIPACIENT.PACIENTII_ID.

INNER JOIN 
    MEDICAMENTATIE M ON T.ID_MEDICAMENT = M.ID_MEDICAMENT
-- Joining MEDICAMENTATIE table on ID_MEDICAMENT, which is the primary key in MEDICAMENTATIE.
-- Likely uses a clustered index seek on MEDICAMENTATIE.ID_MEDICAMENT.

WHERE 
    T.BOALA = 'DIABET' 
-- Filters the results to include only rows where the disease (BOALA) in TRATAMENT is 'DIABET'.
-- Likely uses the non-clustered index idx_Boala created on TRATAMENT(BOALA) for efficient filtering.

ORDER BY 
    P.NUME; 
-- Sorts the results by the patient name (NUME) from the PACIENTII table.
-- Likely uses the non-clustered index idx_Nume created on PACIENTII(NUME) to optimize sorting.
