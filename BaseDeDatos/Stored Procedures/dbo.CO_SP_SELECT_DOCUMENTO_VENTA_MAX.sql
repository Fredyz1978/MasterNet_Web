SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE proc [dbo].[CO_SP_SELECT_DOCUMENTO_VENTA_MAX]
@CO_EMP_RUC CHAR(13),
@CO_TIP_DOC_VEN_NUM int
AS
select max(CO_DOC_VEN_FEC) as CO_DOC_VEN_FEC from co_documento_venta
where CO_EMP_RUC=@CO_EMP_RUC AND CO_TIP_DOC_VEN_NUM=@CO_TIP_DOC_VEN_NUM
GO
