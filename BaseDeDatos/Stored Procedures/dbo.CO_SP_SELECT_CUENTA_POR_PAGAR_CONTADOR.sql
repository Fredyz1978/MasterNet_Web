SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [dbo].[CO_SP_SELECT_CUENTA_POR_PAGAR_CONTADOR]
AS
SELECT Isnull(MAX(CO_CUE_PAG_COD),0) FROM dbo.CO_CUENTA_POR_PAGAR
GO
