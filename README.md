# Hospital-Management-Database
# Task Description
- Stored Procedure with User-Defined Function

   - Create a stored procedure for the INSERT operation on two tables with a 1-n relationship.
   - The stored procedure parameters should describe the entities/relationships in the tables.
   - Include at least one user-defined function to validate specific parameters.
    
- View and Data Extraction

   - Create a view that extracts data from at least three tables.
   - Write a SELECT query on the view to provide meaningful information for a potential user.
     
- Trigger with Logging

   - Implement a trigger on a table for INSERT, UPDATE, or DELETE operations.
   - The trigger should log the following details in a log table:
   - The date and time of the triggering statement.
   - The trigger type (INSERT/UPDATE/DELETE).
   - The name of the affected table.
   - The number of records added/modified/removed.
  
- Complex Query with Execution Plan

   - Write a query that includes at least two of the following operators in its execution plan:
   - Clustered Index Scan
   - Clustered Index Seek
   - Nonclustered Index Scan
   - Nonclustered Index Seek
   -Key Lookup

# 📂 DatabaseOperations
 - 📂insertions-a
    -   CheckPatientExists.sql
    -   dbo.AddMedicationTreatment.sql
    -   dbo.AddPatientTreatment.sql
    -   dbo.CheckMedicationExists.sql
    -   dbo.ValidateDose.sql
    -   insertion 1-n test.sql
    -   testinsert2.sql
    -   ValidateDisease.sql        
 - 📂proc do undo
    -  do_proc_1.sql
    -  do_proc_2.sql
    -  do_proc_3.sql
    -  do_proc_4.sql
    -  main.sql
    -  runnnn.sql
    -  undo_proc_1.sql
    -  undo_proc_2.sql
    -  undo_proc_3.sql
    -  undo_proc_4.sql
    -  versiontable.sql 
 - 📂triggers
    -  Logs.sql
    -  test_triggers.sql
    -  trg_Delete_Pacientii.sql
    -  trg_Delete_Tratament.sql
    -  trg_Insert_Pacientii.sql
    -  trg_Insert_Tratament.sql
    -  trg_Update_Pacientii.sql
    -  trg_Update_Tratament.sql
 - 📂view-b
    -  testview.sql
    -  vw_PatientTreatmentDetails.sql
 - INDEXES.sql
 - SQLQuery1.sql
 - SQLQuery2.sql
 - SQLQuery3.sql
 - SQLQuery4.sql
 - SQLQuery6.sql
 - SQLQuery7.sql
