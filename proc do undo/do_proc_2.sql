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
CREATE PROCEDURE do_proc_2 AS
BEGIN
    ALTER TABLE MEDICAMENTATIE ADD CONSTRAINT DF_Per DEFAULT 5 FOR DozaPezi;
    PRINT 'Version 2 applied: Default constraint added.';
    UPDATE Version SET VersionNo = 2 WHERE VersionNo < 2;
END;

