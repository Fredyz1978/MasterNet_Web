SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_PARAMETRO]
@EMPRESA_ID CHAR(13)
AS
SELECT * FROM CO_PARAMETRO
WHERE EMPRESA_ID=@EMPRESA_ID
GO
