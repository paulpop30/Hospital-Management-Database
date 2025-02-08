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
CREATE PROCEDURE do_proc_1 AS
BEGIN
    ALTER TABLE PACIENTII ADD EMAIL NVARCHAR(MAX);
    PRINT 'Version 1 applied: Column EMAIL added.';
    UPDATE Version SET VersionNo = 1 WHERE VersionNo < 1;
END;