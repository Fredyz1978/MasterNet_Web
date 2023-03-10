SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE VIEW [dbo].[CO_VW_SELECT_REPORTE_DOCUMENTOS_ELECTRONICOS]
AS
select DV.CO_DOC_VEN_NUM, C.CO_CLI_NOM, DV.CO_DOC_VEN_FEC, DE.CO_FECHA_AUTORIZA_FACT_ELECTRONICA, DE.CO_ESTADO_FACTURA_ELECTRONICA,
DE.CO_OBSERVA_FACT_ELECTRONICA, DV.CO_TIP_DOC_VEN_NUM
,'' AS CO_FACTURA_COMPRA,NULL AS CO_DOC_COM_TOT_NET
from CO_DOCUMENTO_ELECTRONICO DE
INNER JOIN CO_DOCUMENTO_VENTA DV ON DV.CO_DOC_VEN_ID=DE.CO_DOCUMENTO_ID
INNER JOIN CO_CLIENTE C ON DV.CO_CLI_COD=C.CO_CLI_COD
UNION
select GR.CO_DOC_VEN_GUI_NUM, C.CO_CLI_NOM, GR.CO_DOC_VEN_GUI_FEC_REG, DE.CO_FECHA_AUTORIZA_FACT_ELECTRONICA, DE.CO_ESTADO_FACTURA_ELECTRONICA,
DE.CO_OBSERVA_FACT_ELECTRONICA, 102 AS CO_TIP_DOC_VEN_NUM
,'' AS CO_FACTURA_COMPRA,NULL AS CO_DOC_COM_TOT_NET
from CO_DOCUMENTO_ELECTRONICO DE
INNER JOIN CO_GUIA_REMISION GR ON GR.CO_DOC_VEN_GUI_COD=DE.CO_DOCUMENTO_ID
INNER JOIN CO_DOCUMENTO_VENTA DV ON DV.CO_DOC_VEN_ID=GR.CO_DOC_VEN_ID
INNER JOIN CO_CLIENTE C ON DV.CO_CLI_COD=C.CO_CLI_COD
UNION
select CO_RET_SER1+'-'+CO_RET_SER2+'-'+CO_RET_NUM_REF AS CO_DOC_VEN_GUI_NUM, RE.CO_RET_BEN_NOM, RE.CO_RET_BEN_FEC_EMI, DE.CO_FECHA_AUTORIZA_FACT_ELECTRONICA, DE.CO_ESTADO_FACTURA_ELECTRONICA,
DE.CO_OBSERVA_FACT_ELECTRONICA, 101 AS CO_TIP_DOC_VEN_NUM,
CO.CO_DOC_COM_ETA+'-'+CO.CO_DOC_COM_PUN_EMI+'-'+CO.CO_DOC_COM_SEC AS CO_FACTURA_COMPRA,
CO.CO_DOC_COM_TOT_NET
from CO_DOCUMENTO_ELECTRONICO DE
INNER JOIN CO_RETENCION RE ON RE.CO_RET_COD=DE.CO_DOCUMENTO_ID
INNER JOIN CO_DOCUMENTO_COMPRA CO ON RE.CO_DOC_COM_ID=CO.CO_DOC_COM_ID

GO
