SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_UPDATE_CENTRO_COSTOS]
@CO_CEN_COS_COD VARCHAR(10),
@CO_EMP_RUC CHAR(13),
@CO_CEN_COS_DES VARCHAR(50)
AS
UPDATE CO_CENTRO_COSTO
SET CO_CEN_COS_DES=@CO_CEN_COS_DES
WHERE CO_EMP_RUC=@CO_EMP_RUC AND CO_CEN_COS_COD=@CO_CEN_COS_COD
GO
