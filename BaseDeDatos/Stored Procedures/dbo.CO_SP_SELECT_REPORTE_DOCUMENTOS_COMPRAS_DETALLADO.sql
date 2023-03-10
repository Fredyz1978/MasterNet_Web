SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_REPORTE_DOCUMENTOS_COMPRAS_DETALLADO]
@CO_EMP_RUC CHAR(13)
,@CO_DOC_COM_FEC1 DATETIME
,@CO_DOC_COM_FEC2 DATETIME
,@CO_DOC_COM_FOR_PAG NVARCHAR(15)
,@CO_DOC_COM_EST NVARCHAR(50)
,@CO_TIP_PRO_COD NVARCHAR(10)
,@CO_PRO_COD NVARCHAR(50)
,@CO_ALM_COD NVARCHAR(20)
,@CO_TIP_SUS_COD NVARCHAR(5)
,@CO_TIP_COM_COM_COD INT
AS
SELECT * ,@CO_DOC_COM_FEC1 AS DESDE,@CO_DOC_COM_FEC2 AS HASTA
FROM CO_VW_SELECT_REPORTE_LISTADO_FACTURAS
WHERE 
CO_EMP_RUC=@CO_EMP_RUC AND
CO_DOC_COM_EST=@CO_DOC_COM_EST AND
CO_DOC_COM_FEC_EMI>=@CO_DOC_COM_FEC1 AND
CO_DOC_COM_FEC_EMI<=@CO_DOC_COM_FEC2 AND 
CO_DOC_COM_FOR_PAG=case @CO_DOC_COM_FOR_PAG when '' then CO_DOC_COM_FOR_PAG else @CO_DOC_COM_FOR_PAG end  AND
CO_TIP_PRO_COD=case @CO_TIP_PRO_COD when '' then CO_TIP_PRO_COD else @CO_TIP_PRO_COD end  AND
CO_PRO_COD=case @CO_PRO_COD when '' then CO_PRO_COD else @CO_PRO_COD end  AND
CO_TIP_SUS_COD=case @CO_TIP_SUS_COD when '' then CO_TIP_SUS_COD else @CO_TIP_SUS_COD end  AND
CO_TIP_COM_COM_COD=case @CO_TIP_COM_COM_COD when 0 then CO_TIP_COM_COM_COD else @CO_TIP_COM_COM_COD end  AND
CO_ALM_COD=case @CO_ALM_COD when '' then CO_ALM_COD else @CO_ALM_COD end
GO
