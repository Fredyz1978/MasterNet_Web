SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[CO_SP_SELECT_VERIFICAR_CUENTA]
@CO_CUE_COD VARCHAR(40),
@CO_EMP_RUC CHAR(13)
AS
SELECT COUNT(*) FROM CO_CUENTA
WHERE CO_CUE_COD=@CO_CUE_COD AND CO_EMP_RUC=@CO_EMP_RUC
GO
