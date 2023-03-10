SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_UPDATE_ACTIVO_FIJO_VALOR]
@CO_ACT_FIJ_COD INT,
@CO_EMP_RUC CHAR(13),
@CO_ACT_FIJ_VAL_DEP FLOAT
AS
UPDATE CO_ACTIVO_FIJO SET
CO_ACT_FIJ_VAL_ACT=CO_ACT_FIJ_VAL_ACT-@CO_ACT_FIJ_VAL_DEP,
CO_ACT_FIJ_DEP_ACU=CO_ACT_FIJ_DEP_ACU+@CO_ACT_FIJ_VAL_DEP
WHERE CO_ACT_FIJ_COD=@CO_ACT_FIJ_COD AND CO_EMP_RUC=@CO_EMP_RUC
GO
