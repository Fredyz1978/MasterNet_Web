SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_DELETE_FAMILIA_ARTICULO]
@CO_EMP_RUC char(13)
,@CO_FAM_ART_COD int
AS
DELETE [dbo].[CO_FAMILIA_ARTICULO]
WHERE [CO_EMP_RUC]=@CO_EMP_RUC
AND CO_FAM_ART_COD=@CO_FAM_ART_COD
GO
