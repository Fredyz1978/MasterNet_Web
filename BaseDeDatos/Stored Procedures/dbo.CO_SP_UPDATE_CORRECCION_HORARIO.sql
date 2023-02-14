SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_UPDATE_CORRECCION_HORARIO]
(@CO_COR_HOR_MES int
,@CO_COR_HOR_ANO int
,@PROF_COD char(10)
,@CO_EMP_RUC char(13)
,@CO_COR_HOR_LAB float
,@CO_COR_HOR_EXT float
,@CO_COR_HOR_SUP float)
AS
UPDATE [dbo].[CO_CORRECION_HORARIO] SET
[CO_COR_HOR_LAB]=@CO_COR_HOR_LAB
,[CO_COR_HOR_EXT]=@CO_COR_HOR_EXT
,[CO_COR_HOR_SUP]=@CO_COR_HOR_SUP
WHERE
([CO_COR_HOR_MES]=@CO_COR_HOR_MES
AND [CO_COR_HOR_ANO]=@CO_COR_HOR_ANO
AND [PROF_COD]=@PROF_COD
AND [CO_EMP_RUC]=@CO_EMP_RUC)
GO
