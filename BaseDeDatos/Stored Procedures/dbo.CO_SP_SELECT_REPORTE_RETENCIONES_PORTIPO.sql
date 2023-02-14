SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- Stored Procedure

CREATE PROC [dbo].[CO_SP_SELECT_REPORTE_RETENCIONES_PORTIPO]
@CO_EMP_RUC CHAR(13),
@CO_TIP_RET_COD VARCHAR(10),
@CO_COM_FEC_INI DATETIME,
@CO_COM_FEC_FIN DATETIME,
@CO_TIPO VARCHAR(20)
AS
IF @CO_TIPO='Ventas'
BEGIN
	SELECT CO_TIP_RET_NOM,CO_RET_BEN_FEC_EMI, C.CO_CLI_NOM as CO_RET_BEN_NOM,C.CO_CLI_COD AS CO_RET_BEN_NUM_RUC,DV.CO_DOC_VEN_NUM AS  CO_RET_NUM_REF,CO_RET_BAS,CO_RET_POR,CO_RET_VAL
	,@CO_COM_FEC_INI AS INICIO,@CO_COM_FEC_FIN AS FINAL
	,CO_EMP_NOM, R.CO_RET_SER1+'-'+R.CO_RET_SER2+'-'+R.CO_RET_NUM_REF AS CO_RET_NUM
	FROM  dbo.CO_EMPRESA INNER JOIN
            dbo.CO_RETENCION R ON dbo.CO_EMPRESA.CO_EMP_RUC = R.CO_EMP_RUC
			INNER JOIN dbo.CO_DETALLE_RETENCION ON R.CO_RET_COD=dbo.CO_DETALLE_RETENCION.CO_RET_COD 
			INNER JOIN dbo.CO_DOCUMENTO_VENTA DV on DV.CO_DOC_VEN_ID=R.CO_DOC_VEN_ID
			INNER JOIN dbo.CO_CLIENTE C on C.CO_CLI_COD=DV.CO_CLI_COD 
			--and C.CO_TIP_CLI_COD=DV.CO_TIP_CLI_COD
	WHERE CO_RET_TIP=@CO_TIPO
	AND dbo.CO_DETALLE_RETENCION.CO_DET_RET_ID=CASE when @CO_TIP_RET_COD='' or @CO_TIP_RET_COD is null  then dbo.CO_DETALLE_RETENCION.CO_DET_RET_ID else @CO_TIP_RET_COD end 
	AND R.CO_EMP_RUC=@CO_EMP_RUC
	AND R.CO_ESTADO = 1 
	AND DV.CO_DOC_VEN_EST<>'ANULADA'
	AND R.CO_RET_TIP='Ventas'
	AND (R.CO_RET_BEN_FEC_EMI>=@CO_COM_FEC_INI
	AND R.CO_RET_BEN_FEC_EMI<=@CO_COM_FEC_FIN)
	order by DV.CO_DOC_VEN_NUM
END
ELSE
BEGIN
	SELECT CO_TIP_RET_NOM,CO_RET_BEN_FEC_EMI,CO_RET_BEN_NOM,CO_RET_BEN_NUM_RUC,DC.CO_DOC_COM_ETA+'-'+DC.CO_DOC_COM_PUN_EMI+'-'+DC.CO_DOC_COM_SEC AS  CO_RET_NUM_REF,CO_RET_BAS,CO_RET_POR,CO_RET_VAL
	,@CO_COM_FEC_INI AS INICIO,@CO_COM_FEC_FIN AS FINAL
	,CO_EMP_NOM, R.CO_RET_SER1+'-'+R.CO_RET_SER2+'-'+R.CO_RET_NUM_REF AS CO_RET_NUM
	FROM  dbo.CO_EMPRESA INNER JOIN
            dbo.CO_RETENCION R ON dbo.CO_EMPRESA.CO_EMP_RUC = R.CO_EMP_RUC
			INNER JOIN dbo.CO_DETALLE_RETENCION ON R.CO_RET_COD=dbo.CO_DETALLE_RETENCION.CO_RET_COD 
			INNER JOIN dbo.CO_DOCUMENTO_COMPRA DC ON R.CO_DOC_COM_ID=DC.CO_DOC_COM_ID
	WHERE CO_RET_TIP=@CO_TIPO
	AND dbo.CO_DETALLE_RETENCION.CO_DET_RET_ID=CASE when @CO_TIP_RET_COD='' or @CO_TIP_RET_COD is null  then dbo.CO_DETALLE_RETENCION.CO_DET_RET_ID else @CO_TIP_RET_COD end 
	AND R.CO_EMP_RUC=@CO_EMP_RUC
	AND R.CO_RET_TIP='Compras'
	AND DC.CO_DOC_COM_EST<>'ANULADO'
	AND (R.CO_RET_BEN_FEC_EMI>=@CO_COM_FEC_INI
	AND R.CO_RET_BEN_FEC_EMI<=@CO_COM_FEC_FIN)
END
GO