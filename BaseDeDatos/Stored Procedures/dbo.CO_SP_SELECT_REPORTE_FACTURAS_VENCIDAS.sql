SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_REPORTE_FACTURAS_VENCIDAS]
@CO_EMP_RUC CHAR(13)
AS
select CO_DOC_VEN_NUM, C.CO_CLI_NOM, CO_DOC_VEN_FEC_PAGO, sum(CO_PAG_DOC_VEN_VAL) ValorPendiente 
from CO_DOCUMENTO_VENTA DV inner join 
CO_PAGO_DOCUMENTO_VENTA PDV on PDV.CO_DOC_VEN_ID=DV.CO_DOC_VEN_ID inner join CO_CLIENTE C on DV.CO_CLI_COD=c.CO_CLI_COD
where 
CO_DOC_VEN_FEC_PAGO between DATEADD(DAY,0,GETDATE()) and DATEADD(DAY,6,GETDATE()) AND 
DV.CO_EMP_RUC=@CO_EMP_RUC
group by CO_DOC_VEN_NUM, CO_CLI_NOM, CO_DOC_VEN_FEC_PAGO
having sum(CO_PAG_DOC_VEN_VAL) <> 0
GO
