SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_KARDEX_TOTAL_FILA]
@CO_EMP_RUC CHAR(13),
@CO_ART_COD NVARCHAR(20),
@CO_KAR_TOT_DOC INT,
@CO_KAR_TOT_TIP_DOC INT,
@CO_BOD_COD int
AS
SELECT * FROM CO_KARDEX_TOTAL
WHERE
CO_EMP_RUC=@CO_EMP_RUC AND
CO_ART_COD=@CO_ART_COD AND
CO_KAR_TOT_DOC=@CO_KAR_TOT_DOC AND
CO_KAR_TOT_TIP_DOC=@CO_KAR_TOT_TIP_DOC AND
CO_BOD_COD=@CO_BOD_COD
GO
