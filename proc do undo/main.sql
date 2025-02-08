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
CREATE PROCEDURE main
    @new_version INT
AS
BEGIN
    DECLARE @current_version INT;
    DECLARE @procedure_name NVARCHAR(50);
    
    -- Get the current version
    SELECT @current_version = VersionNo FROM Version;

    -- Validate the target version
    IF @new_version < 0 OR @new_version > 4
    BEGIN
        PRINT 'Error: Version does not exist.';
        RETURN;
    END;

    -- Upgrade the version step-by-step
    WHILE @current_version < @new_version
    BEGIN
        SET @current_version = @current_version + 1;
        SET @procedure_name = 'do_proc_' + CAST(@current_version AS NVARCHAR);
        EXEC sp_executesql @procedure_name;
    END;

    -- Downgrade the version step-by-step
    WHILE @current_version > @new_version
    BEGIN
        SET @procedure_name = 'undo_proc_' + CAST(@current_version AS NVARCHAR);
        EXEC sp_executesql @procedure_name;
        SET @current_version = @current_version - 1;
    END;

    PRINT 'Database transitioned to version ' + CAST(@new_version AS NVARCHAR) + '.';
END;
