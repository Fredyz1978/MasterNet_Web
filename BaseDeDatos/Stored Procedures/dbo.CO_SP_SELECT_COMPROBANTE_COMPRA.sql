SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_COMPROBANTE_COMPRA]
AS
SELECT *
FROM dbo.CO_TIPO_COMPROBANTE_COMPRA
where CO_TIP_COM_COM_INV IS NOT NULL
GO