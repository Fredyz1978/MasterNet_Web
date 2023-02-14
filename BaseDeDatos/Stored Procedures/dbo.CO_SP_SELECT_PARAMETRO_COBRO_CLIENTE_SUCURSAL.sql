SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_PARAMETRO_COBRO_CLIENTE_SUCURSAL]
@CO_EMP_RUC CHAR(13),
@AlmacenID INT
AS
SELECT * FROM dbo.CO_PARAMETRO_COBRO
WHERE CO_EMP_RUC=@CO_EMP_RUC AND AlmacenID=@AlmacenID
GO
