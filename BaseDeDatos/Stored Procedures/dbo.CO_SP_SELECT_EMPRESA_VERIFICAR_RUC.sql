SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_EMPRESA_VERIFICAR_RUC]
@CO_EMP_RUC CHAR(13)
AS
SELECT COUNT(*) FROM CO_EMPRESA
WHERE CO_EMP_RUC=@CO_EMP_RUC
GO
