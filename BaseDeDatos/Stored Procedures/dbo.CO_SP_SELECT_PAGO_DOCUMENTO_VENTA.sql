SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_PAGO_DOCUMENTO_VENTA]
(@CO_DOC_VEN_ID UNIQUEIDENTIFIER)
AS
SELECT * FROM [dbo].[CO_PAGO_DOCUMENTO_VENTA]
WHERE CO_DOC_VEN_ID=@CO_DOC_VEN_ID
--and CO_PAG_DOC_VEN_CON like '%Documento Venta%'
GO
