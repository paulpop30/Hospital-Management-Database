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
CREATE PROCEDURE do_proc_4 AS
BEGIN
    ALTER TABLE DETALIIPACIENT ADD CONSTRAINT FK_PACIENTII FOREIGN KEY (PACIENTII_ID) REFERENCES PACIENTII(ID);
    PRINT 'Version 4 applied: Foreign key added.';
    UPDATE Version SET VersionNo = 4 WHERE VersionNo < 4;
END;

