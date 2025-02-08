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
CREATE PROCEDURE undo_proc_4 AS
BEGIN
    ALTER TABLE DETALIIPACIENT DROP CONSTRAINT FK_PACIENTII;
    PRINT 'Version 4 reverted: Foreign key removed.';
    UPDATE Version SET VersionNo = 3 WHERE VersionNo > 3;
END;

