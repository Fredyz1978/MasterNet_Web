SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_CABECERA_ROL]
@CO_EMP_RUC CHAR(13)
,@CO_ROL_CAB_MES INT
,@CO_ROL_CAB_ANO INT
AS
SELECT     dbo.CO_CABECERA_ROL.PROF_COD, dbo.CO_CABECERA_ROL.CO_EMP_RUC, dbo.CO_CABECERA_ROL.CO_ROL_CAB_FEC_PAG, 
                      dbo.CO_CABECERA_ROL.CO_ROL_CAB_VAL_LET, dbo.CO_CABECERA_ROL.CO_ROL_CAB_VAL, dbo.CO_CABECERA_ROL.CO_ROL_CAB_TIP, 
                      dbo.CO_CABECERA_ROL.CO_ROL_CAB_CHE, dbo.CO_CABECERA_ROL.CO_ROL_CAB_CUE_NUM, dbo.CO_CABECERA_ROL.CO_ROL_CAB_MES, 
                      dbo.CO_CABECERA_ROL.CO_ROL_CAB_ANO, dbo.PROFESOR.PROF_APE + ' ' + dbo.PROFESOR.PROF_NOM AS EMPLEADO
FROM         dbo.CO_CABECERA_ROL INNER JOIN
                      dbo.PROFESOR ON dbo.CO_CABECERA_ROL.PROF_COD = dbo.PROFESOR.PROF_COD
WHERE dbo.CO_CABECERA_ROL.CO_EMP_RUC=@CO_EMP_RUC AND dbo.CO_CABECERA_ROL.CO_ROL_CAB_MES=@CO_ROL_CAB_MES AND dbo.CO_CABECERA_ROL.CO_ROL_CAB_ANO=@CO_ROL_CAB_ANO
GO