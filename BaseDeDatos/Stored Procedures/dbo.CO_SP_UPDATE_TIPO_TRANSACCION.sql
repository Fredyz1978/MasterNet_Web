SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_UPDATE_TIPO_TRANSACCION]
@CO_TIP_TRA_COD CHAR(2),
@CO_EMP_RUC CHAR(13),
@CO_TIP_TRA_NOM VARCHAR(20),
@CO_TIP_TRA_OPE CHAR(1)
AS
UPDATE CO_TIPO_TRANSACCION SET CO_TIP_TRA_NOM=@CO_TIP_TRA_NOM,CO_TIP_TRA_OPE=@CO_TIP_TRA_OPE
WHERE CO_TIP_TRA_COD=@CO_TIP_TRA_COD AND CO_EMP_RUC=@CO_EMP_RUC
GO