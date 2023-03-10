SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create PROC [dbo].[CO_SP_UPDATE_CUENTA_POR_PAGAR]
@CO_CUE_PAG_COD int,
@CO_PRO_COD nvarchar(10),
@CO_CUE_PAG_FEC datetime,
@CO_CUE_PAG_PLA int,
@CO_CUE_PAG_EST nvarchar(20)
AS
update dbo.CO_CUENTA_POR_PAGAR set
CO_PRO_COD=@CO_PRO_COD,
CO_CUE_PAG_FEC=@CO_CUE_PAG_FEC,
CO_CUE_PAG_PLA=@CO_CUE_PAG_PLA,
CO_CUE_PAG_EST=@CO_CUE_PAG_EST
WHERE CO_CUE_PAG_COD=@CO_CUE_PAG_COD
GO
