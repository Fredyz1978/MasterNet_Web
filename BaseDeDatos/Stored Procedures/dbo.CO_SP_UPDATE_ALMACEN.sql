SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_UPDATE_ALMACEN]
(@CO_ALM_COD nvarchar(20)
,@CO_EMP_RUC char(13)
,@CO_ALM_NOM nvarchar(100))
AS
UPDATE [dbo].[CO_ALMACEN] SET
[CO_ALM_NOM]=@CO_ALM_NOM
WHERE ([CO_ALM_COD]=@CO_ALM_COD
AND [CO_EMP_RUC]=@CO_EMP_RUC)
GO
