SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [PRODUCCION].[PR_SELECT_TIPO_RECETA]
@CO_EMP_RUC char(13)
AS
SELECT * FROM [PRODUCCION].[TIPO_RECETA]
WHERE 
[CO_EMP_RUC]=@CO_EMP_RUC
--order by PR_TIP_REC_NOM

GO
