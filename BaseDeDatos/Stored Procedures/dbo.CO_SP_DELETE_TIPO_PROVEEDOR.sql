SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_DELETE_TIPO_PROVEEDOR]
@CO_TIP_PRO_COD nvarchar(10)
,@CO_EMP_RUC char(13)
AS
DELETE [dbo].[CO_TIPO_PROVEEDOR]
WHERE [CO_TIP_PRO_COD]=@CO_TIP_PRO_COD AND [CO_EMP_RUC]=@CO_EMP_RUC
GO
