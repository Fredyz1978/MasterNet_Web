SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROC [PRODUCCION].[PR_SELECT_ARTICULO_PESO]
@CO_ART_COD NVARCHAR(20)
,@CO_EMP_RUC CHAR(13)
AS
SELECT CO_ART_PES FROM dbo.CO_ARTICULO
WHERE CO_ART_COD=@CO_ART_COD AND CO_EMP_RUC=@CO_EMP_RUC



GO
