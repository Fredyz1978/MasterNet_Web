SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_UBICACION_GEOGRAFICA]
@CO_EMP_RUC char(13)
AS
SELECT * FROM [dbo].[CO_UBICACION_GEOGRAFICA]
WHERE ([CO_EMP_RUC]=@CO_EMP_RUC)
GO
