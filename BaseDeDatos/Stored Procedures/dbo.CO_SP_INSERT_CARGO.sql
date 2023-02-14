SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_INSERT_CARGO]
@CO_EMP_RUC CHAR(13)
,@CO_CAR_NOM NVARCHAR(50)
,@CO_CAR_SUE FLOAT
AS
INSERT INTO [dbo].[CO_CARGO]
([CO_EMP_RUC]
,[CO_CAR_NOM]
,[CO_CAR_SUE])
VALUES
(@CO_EMP_RUC
,@CO_CAR_NOM
,@CO_CAR_SUE)
GO