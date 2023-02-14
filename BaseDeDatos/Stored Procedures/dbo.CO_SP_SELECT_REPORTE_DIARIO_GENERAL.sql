SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_REPORTE_DIARIO_GENERAL]
@CO_EMP_RUC CHAR(13),
@CO_TIP_COM_COD INT,
@CO_COM_FEC_INI DATETIME,
@CO_COM_FEC_FIN DATETIME,
@CO_COM_MAY BIT,
@CO_DIA_OPC INT,
@CO_CUE_COD VARCHAR(40),
@CO_COM_EST varchar(15)
AS
IF @CO_DIA_OPC=1
		SELECT *,@CO_COM_FEC_INI AS INICIO,@CO_COM_FEC_FIN AS FINAL, @CO_DIA_OPC AS OPCION
		FROM CO_VW_SELECT_REPORTE_COMPROBANTES
		WHERE CO_EMP_RUC=@CO_EMP_RUC AND CO_COM_EST=@CO_COM_EST
		AND (CO_COM_FEC>=@CO_COM_FEC_INI
		AND CO_COM_FEC<=@CO_COM_FEC_FIN) AND
		CO_COM_MAY=@CO_COM_MAY AND CO_COM_EST=@CO_COM_EST
		ORDER BY CO_COM_FEC
ELSE IF @CO_DIA_OPC=2
		SELECT *
		,@CO_COM_FEC_INI AS INICIO,@CO_COM_FEC_FIN AS FINAL,@CO_DIA_OPC AS OPCION
		FROM CO_VW_SELECT_REPORTE_COMPROBANTES
		WHERE CO_EMP_RUC=@CO_EMP_RUC AND CO_TIP_COM_COD=@CO_TIP_COM_COD 
		AND (CO_COM_FEC>=@CO_COM_FEC_INI
		AND CO_COM_FEC<=@CO_COM_FEC_FIN) AND
		CO_COM_MAY=@CO_COM_MAY AND CO_COM_EST=@CO_COM_EST
		ORDER BY CO_COM_FEC
ELSE IF @CO_DIA_OPC=3
		SELECT *
		,@CO_COM_FEC_INI AS INICIO,@CO_COM_FEC_FIN AS FINAL,@CO_DIA_OPC AS OPCION
		FROM CO_VW_SELECT_REPORTE_COMPROBANTES
		WHERE CO_EMP_RUC=@CO_EMP_RUC 
		--AND CO_TIP_COM_COD=@CO_TIP_COM_COD 
		AND CO_CUE_COD=@CO_CUE_COD
		AND (CO_COM_FEC>=@CO_COM_FEC_INI
		AND CO_COM_FEC<=@CO_COM_FEC_FIN) AND
		CO_COM_MAY=@CO_COM_MAY AND CO_COM_EST=@CO_COM_EST
		ORDER BY CO_COM_FEC
GO