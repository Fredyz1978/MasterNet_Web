SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_EMPRESA_VERIFICAR_NOMBRE]
@CO_EMP_NOM VARCHAR(50)
AS
SELECT COUNT(*) FROM CO_EMPRESA
WHERE CO_EMP_NOM=@CO_EMP_NOM
GO