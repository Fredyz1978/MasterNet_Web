SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROC [dbo].[CO_SP_SELECT_REPORTE_RETENCION]
@CO_RET_COD UNIQUEIDENTIFIER 

AS
BEGIN
	SELECT [CO_RET_BEN_NOM]
      ,[CO_RET_BEN_NUM_RUC]
      ,[CO_RET_BEN_DIR]
      ,[CO_RET_BEN_FEC_EMI]
      ,[CO_RET_EJE_FIS]
      ,[CO_RET_TIP]
      ,[CO_RET_AUT]
      ,[CO_RET_NUM_REF]
      ,[CO_RET_SER2]
      ,[CO_RET_SER1]
      ,[CO_EMP_NOM]
      ,[CO_EMP_CIU]
      ,[CO_EMP_DIR]
      ,[CO_CODIGO_BARRAS_FACT_ELECTRONICA]
      ,[CO_CLAVE_ACCESO_FACT_ELECTRONICA]
      ,[CO_FECHA_AUTORIZA_FACT_ELECTRONICA]
      ,[CO_EMP_RUC]
      ,[CO_RET_COD]
      ,[CO_RET_BAS]
      ,[CO_RET_DET_COD]
      ,[CO_TIP_RET_NOM]
      ,[CO_TIP_RET_COD_SRI]
      ,[CO_RET_POR]
      ,[CO_RET_VAL]
	  ,[CO_OBLIGADO_CONTABILIDAD]
      ,[CO_RET_DET_IMP]
	  ,CO_PRO_MAI
	  ,CO_EMPRESA_LOGO
	  ,CO_PRO_TEL1
	  ,isnull(CO_FACTURA_COMPRA_NUMERO,'') as CO_FACTURA_COMPRA_NUMERO,
	  CO_DOC_COM_FEC_EMI
  FROM [dbo].[CO_VW_SELECT_REPORTE_RETENCION]
	WHERE CO_RET_COD=@CO_RET_COD
END
GO
