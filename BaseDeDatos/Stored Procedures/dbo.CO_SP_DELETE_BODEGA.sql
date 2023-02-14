SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_DELETE_BODEGA]
@CO_EMP_RUC char(13)
,@CO_BOD_COD INT
AS
DELETE [dbo].[CO_BODEGA] 
WHERE
([CO_EMP_RUC]=@CO_EMP_RUC
AND CO_BOD_COD=@CO_BOD_COD)
GO
