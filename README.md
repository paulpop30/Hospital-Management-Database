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

#  📂 DatabaseOperations

 - 📄 README.md         # Overview of the project and implementation
 - 📂 SQL
    -  stored_procedure.sql      # Implementation of the stored procedure and user-defined function
    -  view.sql                  # Creation of the view and associated SELECT query
    -  trigger.sql               # Implementation of the trigger and log table
    -  complex_query.sql         # Query with specific execution plan operators
 - 📂 Documentation
    -  task_description.md       # Full task description and requirements
    -  examples.md               # Example inputs, outputs, and use cases
