SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_DELETE_TIPO_CLIENTE]
@CO_TIP_CLI_COD nvarchar(50)
,@CO_EMP_RUC char(13)
AS
DELETE [dbo].[CO_TIPO_CLIENTE] 
WHERE
([CO_TIP_CLI_COD]=@CO_TIP_CLI_COD
AND [CO_EMP_RUC]=@CO_EMP_RUC)
GO
