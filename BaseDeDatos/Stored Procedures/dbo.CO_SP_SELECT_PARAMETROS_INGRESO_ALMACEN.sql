SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_PARAMETROS_INGRESO_ALMACEN]
@CO_EMP_RUC CHAR(13)
,@AlmacenID INT
AS
SELECT * FROM dbo.CO_PARAMETRO_INGRESO
WHERE CO_EMP_RUC=@CO_EMP_RUC AND AlmacenID=@AlmacenID
GO