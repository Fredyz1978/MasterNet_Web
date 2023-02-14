SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [dbo].[CO_DOCUMENTO_COMPRA_REOC_FALTANTES]
@mes int,
@year int,
@CO_EMP_RUC CHAR(13)
AS
select p.CO_TIP_IDE_PRO_COD as tpIdProv, p.CO_PRO_CED as idProv, dc.CO_TIP_COM_COM_COD as tipoComp, 
		dc.CO_DOC_COM_NUM_AUT as aut, dc.CO_DOC_COM_ETA as estab, dc.CO_DOC_COM_PUN_EMI as ptoEmi,
		dc.CO_DOC_COM_SEC as sec, dc.CO_DOC_COM_FEC_EMI as fechaEmiCom, dc.CO_DOC_COM_TOT_NET, 
		dc.co_doc_com_num, dc.CO_DOC_COM_IVA, dc.CO_DOC_COM_TOT_PAG
from co_documento_compra dc inner join co_proveedor p on dc.CO_PRO_COD = p.CO_PRO_COD
WHERE month(dc.CO_DOC_COM_FEC_EMI)=@mes and year(dc.CO_DOC_COM_FEC_EMI)=@year AND DC.CO_EMP_RUC=@CO_EMP_RUC and
co_doc_com_num not in (select co_doc_com_num from co_retencion)
ORDER BY co_doc_com_num
GO
