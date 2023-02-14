SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_REPORTE_DOCUMENTO_VENTA_SALDOS]
@CO_EMP_RUC CHAR(13),
@CO_DOC_VEN_FEC1 DATETIME,
@CO_DOC_VEN_FEC2 DATETIME,
@CO_TIP_DOC_VEN_NUM INT
AS
SELECT * FROM CO_VW_SELECT_DOCUMENTO_VENTA_SALDOS
WHERE CO_EMP_RUC=@CO_EMP_RUC and CO_PAG_DOC_VEN_VAL=0 AND CO_TIP_DOC_VEN_NUM=@CO_TIP_DOC_VEN_NUM AND
CO_DOC_VEN_FEC>=@CO_DOC_VEN_FEC1 AND
CO_DOC_VEN_FEC<=@CO_DOC_VEN_FEC2
GO