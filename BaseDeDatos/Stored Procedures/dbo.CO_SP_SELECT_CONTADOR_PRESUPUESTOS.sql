SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_CONTADOR_PRESUPUESTOS]
@CO_EMP_RUC char(13)
,@CO_PRE_ANO int
AS
SELECT COUNT(*) AS CONTADOR FROM CO_PRESUPUESTO
WHERE
([CO_EMP_RUC]=@CO_EMP_RUC
AND [CO_PRE_ANO]=@CO_PRE_ANO)
GO
