SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE proc [dbo].[CO_SP_SELECT_PROVEEDOR_POR_CODIGO]
@CO_PRO_COD NVARCHAR(10),
@CO_EMP_RUC CHAR(13)
AS
select * from co_proveedor
where CO_PRO_COD=@CO_PRO_COD and CO_EMP_RUC=@CO_EMP_RUC
GO
