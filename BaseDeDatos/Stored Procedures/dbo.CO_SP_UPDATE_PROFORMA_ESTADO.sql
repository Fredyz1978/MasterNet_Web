SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[CO_SP_UPDATE_PROFORMA_ESTADO]
(@CO_PRO_COD int
,@CO_EMP_RUC char(13)
,@CO_PRO_EST VARCHAR(20))
AS
UPDATE [dbo].[CO_PROFORMA]  SET CO_PRO_EST=@CO_PRO_EST
WHERE
([CO_PRO_COD]=@CO_PRO_COD
AND [CO_EMP_RUC]=@CO_EMP_RUC)
GO
