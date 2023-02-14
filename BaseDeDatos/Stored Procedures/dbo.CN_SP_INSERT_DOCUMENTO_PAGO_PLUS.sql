SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[CN_SP_INSERT_DOCUMENTO_PAGO_PLUS]
@CODIGO_DOCUMENTO_PAGO int
,@FECHA_DOCUMENTO_PAGO datetime
,@VALOR_TOTAL_DOCUMENTO_PAGO decimal(18,2)
,@CO_EMP_RUC char(13)
,@ESTADO_DOCUMENTO_PAGO nvarchar(9)
,@PAGADO_PENDIENTE_FORMA_PAGO nvarchar(50)
,@USUARIO_NOMBRE nvarchar(50)
,@CO_PRO_COD nvarchar(10)
AS
INSERT INTO dbo.CO_DOCUMENTO_PAGO_PROVEEDORES(
CODIGO_DOCUMENTO_PAGO
,FECHA_DOCUMENTO_PAGO
,VALOR_TOTAL_DOCUMENTO_PAGO
,CO_EMP_RUC
,ESTADO_DOCUMENTO_PAGO
,PAGADO_PENDIENTE_FORMA_PAGO
,USUARIO_NOMBRE
,CO_PRO_COD)
VALUES(
@CODIGO_DOCUMENTO_PAGO
,@FECHA_DOCUMENTO_PAGO
,@VALOR_TOTAL_DOCUMENTO_PAGO
,@CO_EMP_RUC
,@ESTADO_DOCUMENTO_PAGO
,@PAGADO_PENDIENTE_FORMA_PAGO
,@USUARIO_NOMBRE
,@CO_PRO_COD)
GO
