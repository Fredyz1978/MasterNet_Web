SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[CN_SP_INSERT_LIBRO_BANCOS_PLUS]
@CODIGO_LIBRO_BANCO int
,@CO_CC_NUM varchar(10)
,@NUMERO_RESIBO_LIBRO_BANCO nvarchar(50)
,@TIPO_TRANSACCION_LIBRO_BANCO char(3)
,@DETALLE_TRANSACCION_LIBRO_BANCO nvarchar(50)
,@VALOR_INGRESO_LIBRO_BANCO decimal(18,2)
,@VALOR_EGRESO_LIBRO_BANCO decimal(18,2)
,@FECHA_TRANSACCION_LIBRO_BANCO datetime
,@ESTADO_TRANSACCION_LIBRO_BANCO nvarchar(7)
,@NOMBRE_USUARIO nvarchar(50)
,@AGENCIA_LIBRO_BANCO nvarchar(50)
,@CO_EMP_RUC char(13)
,@PAGADO_PENDIENTE_LIBRO_BANCO bit
AS
INSERT INTO dbo.CO_LIBRO_BANCO(
CODIGO_LIBRO_BANCO
,CO_CC_NUM
,NUMERO_RESIBO_LIBRO_BANCO
,TIPO_TRANSACCION_LIBRO_BANCO
,DETALLE_TRANSACCION_LIBRO_BANCO
,VALOR_INGRESO_LIBRO_BANCO
,VALOR_EGRESO_LIBRO_BANCO
,FECHA_TRANSACCION_LIBRO_BANCO
,ESTADO_TRANSACCION_LIBRO_BANCO
,NOMBRE_USUARIO
,AGENCIA_LIBRO_BANCO
,CO_EMP_RUC
,PAGADO_PENDIENTE_LIBRO_BANCO)
VALUES(
@CODIGO_LIBRO_BANCO
,@CO_CC_NUM
,@NUMERO_RESIBO_LIBRO_BANCO
,@TIPO_TRANSACCION_LIBRO_BANCO
,@DETALLE_TRANSACCION_LIBRO_BANCO
,@VALOR_INGRESO_LIBRO_BANCO
,@VALOR_EGRESO_LIBRO_BANCO
,@FECHA_TRANSACCION_LIBRO_BANCO
,@ESTADO_TRANSACCION_LIBRO_BANCO
,@NOMBRE_USUARIO
,@AGENCIA_LIBRO_BANCO
,@CO_EMP_RUC
,@PAGADO_PENDIENTE_LIBRO_BANCO)
GO
