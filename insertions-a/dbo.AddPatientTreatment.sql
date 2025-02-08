CREATE PROCEDURE dbo.AddPatientTreatment
    @PACIENTII_ID INT,
    @NUME NVARCHAR(255),
    @PRENUME NVARCHAR(255),
    @BOALA NVARCHAR(255),
    @ID_MEDICAMENT INT,
    @GRAVITATE INT,
    @MEDICAMENTE_TIP NVARCHAR(255),
    @PROVENIENTA NVARCHAR(255)
AS
BEGIN
    -- Validate the disease format using ValidateDisease
    IF dbo.ValidateDisease(@BOALA) = 0
    BEGIN
        PRINT 'Error: Invalid disease format.';
        RETURN;
    END

    BEGIN TRY
        -- Check if the patient already exists in PACIENTII
        IF NOT EXISTS (SELECT 1 FROM PACIENTII WHERE ID = @PACIENTII_ID)
        BEGIN
            -- Insert a new patient if they don't already exist
            INSERT INTO PACIENTII (ID, NUME, PRENUME, BOALA)
            VALUES (@PACIENTII_ID, @NUME, @PRENUME, @BOALA);
            PRINT 'New patient added successfully.';
        END
        ELSE
        BEGIN
            -- Validate the patient exists using CheckPatientExists
            IF dbo.CheckPatientExists(@PACIENTII_ID) = 0
            BEGIN
                PRINT 'Error: Patient does not exist in PACIENTII table.';
                RETURN;
            END
        END

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
