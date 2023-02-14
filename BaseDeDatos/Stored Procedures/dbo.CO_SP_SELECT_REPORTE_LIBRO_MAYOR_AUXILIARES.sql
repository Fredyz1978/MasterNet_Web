SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_REPORTE_LIBRO_MAYOR_AUXILIARES]
@CO_EMP_RUC CHAR(13),
@CO_CUE_COD VARCHAR(40),
@CO_COM_FEC_INI DATETIME,
@CO_COM_FEC_FIN DATETIME,
@CO_COM_MAY BIT,
@CO_DIA_OPC INT
AS
IF @CO_DIA_OPC=0
	BEGIN
		SELECT *,@CO_COM_FEC_INI AS INICIO,@CO_COM_FEC_FIN AS FINAL 
		FROM CO_VW_SELECT_REPORTE_COMPROBANTES_AUXILIARES
		WHERE CO_EMP_RUC=@CO_EMP_RUC
		AND CO_CUE_COD=@CO_CUE_COD
		AND (CO_COM_FEC>=@CO_COM_FEC_INI
		AND CO_COM_FEC<=@CO_COM_FEC_FIN)
		AND CO_COM_MAY=@CO_COM_MAY 
		ORDER BY CO_COM_NUM
	END
ELSE
	BEGIN
		IF @CO_DIA_OPC=1
			BEGIN
				SELECT *,@CO_COM_FEC_INI AS INICIO,@CO_COM_FEC_FIN AS FINAL 
				FROM CO_VW_SELECT_REPORTE_COMPROBANTES_AUXILIARES
				WHERE CO_EMP_RUC=@CO_EMP_RUC 
				AND CO_CUE_COD=@CO_CUE_COD
				AND (CO_COM_FEC>=@CO_COM_FEC_INI
				AND CO_COM_FEC<=@CO_COM_FEC_FIN)
				AND CO_COM_MAY=@CO_COM_MAY
				ORDER BY CO_COM_NUM
			END
	END

GO
