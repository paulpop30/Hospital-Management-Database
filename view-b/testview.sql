SELECT 
    PatientID,
    LastName,
    FirstName,
    Disease,
    Severity,
    MedicationName,
    DosePerDay
FROM 
    vw_PatientTreatmentDetails
WHERE 
    Severity >= 3
ORDER BY 
    Severity DESC;
