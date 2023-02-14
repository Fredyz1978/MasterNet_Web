SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_COMPROBANTES_CONTABLE_REFERENCIA]
@CO_COM_NUM_REF UNIQUEIDENTIFIER
AS
SELECT CO_COM_NUM,CO_TIP_COM_NOM, CO_COM_FEC, CO_COM_CONC, CO_COM_EST, dbo.CO_COMPROBANTE.CO_TIP_COM_COD
FROM dbo.CO_COMPROBANTE INNER JOIN dbo.CO_TIPO_COMPROBANTE ON 
	dbo.CO_COMPROBANTE.CO_EMP_RUC = dbo.CO_TIPO_COMPROBANTE.CO_EMP_RUC AND 
	dbo.CO_COMPROBANTE.CO_TIP_COM_COD = dbo.CO_TIPO_COMPROBANTE.CO_TIP_COM_COD
WHERE CO_COM_NUM_REF=@CO_COM_NUM_REF
GO