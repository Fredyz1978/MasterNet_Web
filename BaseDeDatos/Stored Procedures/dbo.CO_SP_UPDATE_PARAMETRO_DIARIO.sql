SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_UPDATE_PARAMETRO_DIARIO]
@CO_EMP_RUC CHAR(13),
@CO_CEN_COS_COD VARCHAR(30),
@CO_PAR_VAL_ED1 BIT,
@CO_PAR_VAL_ED2 BIT,
@CO_PAR_VAL_ED3 BIT,
@CO_PAR_TIP_COM_NOM VARCHAR(20),
@CO_PAR_TIP_COM_DEP int
AS
UPDATE CO_PARAMETRO_DIARIO
SET CO_CEN_COS_COD=@CO_CEN_COS_COD,
CO_PAR_VAL_ED1=@CO_PAR_VAL_ED1,
CO_PAR_VAL_ED2=@CO_PAR_VAL_ED2,
CO_PAR_VAL_ED3=@CO_PAR_VAL_ED3,
CO_PAR_TIP_COM_NOM=@CO_PAR_TIP_COM_NOM,
CO_PAR_TIP_COM_DEP=@CO_PAR_TIP_COM_DEP
WHERE CO_EMP_RUC=@CO_EMP_RUC
GO