SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_INSERT_GRUPO_OCUPACIONAL]
@CO_EMP_RUC char(13)
,@CO_GRU_OCU_NOM nvarchar(20)
AS
INSERT INTO [dbo].[CO_GRUPO_OCUPACIONAL]
([CO_EMP_RUC]
,[CO_GRU_OCU_NOM])
VALUES
(@CO_EMP_RUC
,@CO_GRU_OCU_NOM)
GO
