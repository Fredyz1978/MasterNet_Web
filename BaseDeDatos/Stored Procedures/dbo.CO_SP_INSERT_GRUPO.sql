SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_INSERT_GRUPO]
@CO_GRU_COD INT,
@CO_GRU_NOM VARCHAR(20),
@CO_EMP_RUC CHAR(13),
@CO_EMP_ESCONTADOR BIT
AS
INSERT INTO CO_GRUPO VALUES
(@CO_GRU_COD,
@CO_GRU_NOM,
@CO_EMP_RUC,
@CO_EMP_ESCONTADOR)
GO
