SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_VENDEDOR]
@CO_EMP_RUC char(13)
AS
SELECT * FROM [dbo].[CO_VENDEDOR] 
WHERE ([CO_EMP_RUC]=@CO_EMP_RUC)
AND CO_ESTADO=1
order by CO_VEN_NOM
GO
