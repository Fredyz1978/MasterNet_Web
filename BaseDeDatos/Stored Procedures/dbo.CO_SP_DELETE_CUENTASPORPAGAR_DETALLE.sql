SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_DELETE_CUENTASPORPAGAR_DETALLE]
@CO_CUE_PAG_COD INT
AS
DELETE dbo.CO_CUENTA_POR_PAGAR_DETALLE
WHERE CO_CUE_PAG_COD=@CO_CUE_PAG_COD
GO
