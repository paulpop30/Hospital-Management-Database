### Hospital-Management-Database
### Task Description
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

###  📂 DatabaseOperations
 - 📂 SQL
    -  stored_procedure.sql     
    -  view.sql                  
    -  trigger.sql              
    -  complex_query.sql         
 - 📂 Documentation
    -  task_description.md      
    -  examples.md               
