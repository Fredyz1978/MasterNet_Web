SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_UPDATE_BODEGA]
@CO_EMP_RUC char(13)
,@CO_BOD_NOM nvarchar(100)
,@CO_BOD_COD INT
,@CO_ALM_COD int
AS
UPDATE [dbo].[CO_BODEGA] SET
[CO_BOD_NOM]=@CO_BOD_NOM
,CO_ALM_COD=@CO_ALM_COD
WHERE
([CO_EMP_RUC]=@CO_EMP_RUC
AND CO_BOD_COD=@CO_BOD_COD)
GO