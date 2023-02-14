SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_BUSQUEDA_EMPRESA_NOMBRE]
@CO_EMP_NOM VARCHAR(50)
AS
DECLARE @LIKE AS VARCHAR(50)
SET @LIKE='%'+@CO_EMP_NOM+'%'
SELECT * FROM CO_EMPRESA
WHERE CO_EMP_NOM LIKE @LIKE
GO
