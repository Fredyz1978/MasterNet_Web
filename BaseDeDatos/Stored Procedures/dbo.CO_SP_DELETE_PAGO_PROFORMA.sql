SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_DELETE_PAGO_PROFORMA]
@CO_PAG_PRO_COD INT
AS
DELETE [dbo].[CO_PAGO_PROFORMA]
WHERE
(CO_PAG_PRO_COD=@CO_PAG_PRO_COD)
GO