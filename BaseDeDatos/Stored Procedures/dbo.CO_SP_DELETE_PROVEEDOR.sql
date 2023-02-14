SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_DELETE_PROVEEDOR]
@CO_PRO_COD nvarchar(10)
,@CO_EMP_RUC char(13)
AS
DELETE [dbo].[CO_PROVEEDOR]
WHERE
[CO_PRO_COD]=@CO_PRO_COD
AND [CO_EMP_RUC]=@CO_EMP_RUC
GO
