SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[CN_SP_SELECT_DOCUMENTO_COMPRA_PAGO_PROVEEDORES_PLUS]
@FECHAINICIO datetime
,@FECHAFIN datetime
AS
SELECT     dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_NUM, dbo.CO_DOCUMENTO_COMPRA.CO_PRO_COD, 
                      dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_SEC, dbo.CO_PROVEEDOR.CO_PRO_NOM, dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_FEC_EMI, 
                      dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_EST, dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_TOT_PAG, 
                      dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_FEC_PAGO, dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_DIAS_PLA, 
                      dbo.CO_DOCUMENTO_COMPRA.CO_DOC_ESTADO_DE_PAGO
FROM         dbo.CO_DOCUMENTO_COMPRA INNER JOIN
                      dbo.CO_PROVEEDOR ON dbo.CO_DOCUMENTO_COMPRA.CO_PRO_COD = dbo.CO_PROVEEDOR.CO_PRO_COD
WHERE     (dbo.CO_DOCUMENTO_COMPRA.CO_DOC_ESTADO_DE_PAGO IS NULL OR
                      dbo.CO_DOCUMENTO_COMPRA.CO_DOC_ESTADO_DE_PAGO = 'False') AND 
                      (dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_FEC_EMI >= @FECHAINICIO) AND 
                      (dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_FEC_EMI <= @FECHAFIN) AND 
                      (dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_EST = N'PROCESADA')
GO
