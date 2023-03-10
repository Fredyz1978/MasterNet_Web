SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_UPDATE_FAMILIA_ARTICULO]
@CO_TIP_ART_COD nvarchar(10)
,@CO_EMP_RUC char(13)
,@CO_FAM_ART_NOM nvarchar(100)
,@CO_FAM_ART_COD int
AS
UPDATE [dbo].[CO_FAMILIA_ARTICULO] SET
[CO_TIP_ART_COD]=@CO_TIP_ART_COD
,[CO_FAM_ART_NOM]=@CO_FAM_ART_NOM
WHERE [CO_EMP_RUC]=@CO_EMP_RUC
AND CO_FAM_ART_COD=@CO_FAM_ART_COD
GO
