SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create PROCEDURE [dbo].[CN_SP_SELECT_PROFESOR_UBICACION]
@CO_EMP_RUC CHAR(13),
@CO_UBI_COD INT
AS
SELECT PROF_COD AS CODIGO,PROF_APE+' '+PROF_NOM AS NOMBRE
FROM PROFESOR
where CO_EMP_RUC=@CO_EMP_RUC AND CO_UBI_COD=@CO_UBI_COD
GO
