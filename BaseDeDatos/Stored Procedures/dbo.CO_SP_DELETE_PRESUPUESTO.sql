SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_DELETE_PRESUPUESTO]
@CO_EMP_RUC CHAR(13),
@CO_PRE_ANO INT
AS
DELETE CO_PRESUPUESTO
WHERE CO_EMP_RUC=@CO_EMP_RUC AND
CO_PRE_ANO=@CO_PRE_ANO
GO
