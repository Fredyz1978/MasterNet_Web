SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_UPDATE_ARTICULO_COSTO]
@CO_ART_COD nvarchar(50)
,@CO_EMP_RUC char(13)
,@CO_ART_PRE_COS float
AS
UPDATE [dbo].[CO_ARTICULO] SET
[CO_ART_PRE_COS]=@CO_ART_PRE_COS
WHERE ([CO_ART_COD]=@CO_ART_COD AND [CO_EMP_RUC]=@CO_EMP_RUC)
GO
