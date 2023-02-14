SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_UPDATE_TIPO_SERVICIOS]
(@CO_TIP_SER_COD int
,@CO_EMP_RUC char(13)
,@CO_TIP_SER_NOM nvarchar(50))
AS
UPDATE [dbo].[CO_TIPO_SERVICIO] SET
[CO_TIP_SER_NOM]=@CO_TIP_SER_NOM
WHERE 
([CO_EMP_RUC]=@CO_EMP_RUC AND CO_TIP_SER_COD=@CO_TIP_SER_COD)
GO
