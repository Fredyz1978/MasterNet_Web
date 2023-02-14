SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_PERSONAL_NOREGISTRADO]
@CO_EMP_RUC CHAR(13),
@CO_REG_DIA_FEC DATETIME
AS
SELECT PROF_COD, PROF_APE+' '+PROF_NOM AS NOMBRE 
FROM PROFESOR
WHERE NOT EXISTS
(SELECT PROF_COD,NOMBRE
FROM CO_VW_SELECT_REGISTRO_DIARIO
WHERE PROFESOR.PROF_COD=CO_VW_SELECT_REGISTRO_DIARIO.PROF_COD AND
CONVERT(NVARCHAR(10),CO_REG_DIA_FEC,103)=CONVERT(NVARCHAR(10),@CO_REG_DIA_FEC,103))
AND CO_EMP_RUC=@CO_EMP_RUC
GO
