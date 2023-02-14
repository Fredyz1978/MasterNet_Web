SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_UPDATE_GRUPO]
@CO_GRU_COD INT,
@CO_GRU_NOM VARCHAR(20),
@CO_EMP_ESCONTADOR BIT
AS
UPDATE CO_GRUPO SET CO_GRU_NOM=@CO_GRU_NOM, CO_EMP_ESCONTADOR=@CO_EMP_ESCONTADOR
WHERE CO_GRU_COD=@CO_GRU_COD
GO