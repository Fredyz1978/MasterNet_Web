SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_PARAMETRO_COMPRA_SUCURSAL]
@CO_EMP_RUC CHAR(13),
@AlmacenID INT,
@CO_TIP_SUS_COD NVARCHAR(5),
@CO_TIP_COM_COM_COD int
AS
SELECT * FROM dbo.CO_PARAMETRO_COMPRAS
WHERE CO_EMP_RUC=@CO_EMP_RUC AND AlmacenID=@AlmacenID AND CO_TIP_SUS_COD=@CO_TIP_SUS_COD
AND CO_TIP_COM_COM_COD=@CO_TIP_COM_COM_COD
GO