SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_DELETE_UBICACIONES_GEOGRAFICAS]
@CO_EMP_RUC char(13)
AS
DELETE [dbo].[CO_UBICACION_GEOGRAFICA]
WHERE 
([CO_EMP_RUC]=@CO_EMP_RUC)
GO
