SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_NUMERO_DOCUMENTO_PAGO_PROVEEDORES_PLUS]
AS
SELECT MAX(CODIGO_DOCUMENTO_PAGO) AS CO_COM_NUM_MAX
FROM dbo.CO_DOCUMENTO_PAGO_PROVEEDORES
GO
