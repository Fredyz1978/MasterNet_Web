SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_PROVEEDOR]
@CO_EMP_RUC CHAR(13)
AS
SELECT CO_PRO_COD,CO_PRO_NOM FROM CO_PROVEEDOR
WHERE CO_EMP_RUC=@CO_EMP_RUC
GO