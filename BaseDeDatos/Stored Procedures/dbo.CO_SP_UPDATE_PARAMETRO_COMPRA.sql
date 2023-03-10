SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_UPDATE_PARAMETRO_COMPRA]
@CO_EMP_RUC char(13)
,@CO_TIP_SUS_COD nvarchar(5)
,@CO_PAR_COM_FAC_TIP_COM_NOM nvarchar(40)
,@CO_PAR_COM_FAC_TIP_COM_COD int
,@CO_PAR_COM_FAC_CUE_TOT_NET nvarchar(40)
,@CO_PAR_COM_FAC_CUE_IVA_PAG nvarchar(40)
,@CO_PAR_COM_FAC_CUE_PAG_EFE nvarchar(40)
,@CO_PAR_COM_FAC_CUE_PAG_CRE nvarchar(40)
,@CO_PAR_COM_FAC_CUE_DES_COM nvarchar(40)
,@CO_PAR_COM_FAC_ASI_AUT bit
,@CO_TIP_COM_COM_COD int
AS
UPDATE [dbo].[CO_PARAMETRO_COMPRA] SET
[CO_PAR_COM_FAC_TIP_COM_NOM]=@CO_PAR_COM_FAC_TIP_COM_NOM
,[CO_PAR_COM_FAC_TIP_COM_COD]=@CO_PAR_COM_FAC_TIP_COM_COD
,[CO_PAR_COM_FAC_CUE_TOT_NET]=@CO_PAR_COM_FAC_CUE_TOT_NET
,[CO_PAR_COM_FAC_CUE_IVA_PAG]=@CO_PAR_COM_FAC_CUE_IVA_PAG
,[CO_PAR_COM_FAC_CUE_PAG_EFE]=@CO_PAR_COM_FAC_CUE_PAG_EFE
,[CO_PAR_COM_FAC_CUE_PAG_CRE]=@CO_PAR_COM_FAC_CUE_PAG_CRE
,[CO_PAR_COM_FAC_CUE_DES_COM]=@CO_PAR_COM_FAC_CUE_DES_COM
,CO_PAR_COM_FAC_ASI_AUT=@CO_PAR_COM_FAC_ASI_AUT
WHERE
([CO_EMP_RUC]=@CO_EMP_RUC
AND [CO_TIP_SUS_COD]=@CO_TIP_SUS_COD
AND CO_TIP_COM_COM_COD=@CO_TIP_COM_COM_COD)
GO
