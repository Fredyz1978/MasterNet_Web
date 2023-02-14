SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_BUSQUEDA_NOTA_DEBITO_EMPLEADO]
@CO_EMP_RUC CHAR(13)
,@PROF_COD CHAR(10)
AS
SELECT * FROM CO_VW_SELECT_NOTAS_DEBITO
WHERE CO_EMP_RUC=@CO_EMP_RUC AND PROF_COD=@PROF_COD
GO
