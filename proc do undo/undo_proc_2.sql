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
CREATE PROCEDURE undo_proc_2 AS
BEGIN
    ALTER TABLE MEDICAMENTATIE DROP CONSTRAINT DF_Per;
    PRINT 'Version 2 reverted: Default constraint removed.';
    UPDATE Version SET VersionNo = 1 WHERE VersionNo > 1;
END;
