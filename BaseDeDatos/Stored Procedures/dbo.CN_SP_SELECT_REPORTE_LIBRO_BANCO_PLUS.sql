SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[CN_SP_SELECT_REPORTE_LIBRO_BANCO_PLUS]
@FECHAINICIO datetime
,@FECHAFIN datetime
,@CO_CC_NUM varchar(10)
AS
SELECT     dbo.CO_LIBRO_BANCO.CODIGO_LIBRO_BANCO, dbo.CO_LIBRO_BANCO.CO_CC_NUM, dbo.CO_LIBRO_BANCO.NUMERO_RESIBO_LIBRO_BANCO, 
                      dbo.CO_LIBRO_BANCO.TIPO_TRANSACCION_LIBRO_BANCO, dbo.CO_LIBRO_BANCO.DETALLE_TRANSACCION_LIBRO_BANCO, 
                      dbo.CO_LIBRO_BANCO.VALOR_INGRESO_LIBRO_BANCO, dbo.CO_LIBRO_BANCO.VALOR_EGRESO_LIBRO_BANCO, 
                      dbo.CO_LIBRO_BANCO.FECHA_TRANSACCION_LIBRO_BANCO, dbo.CO_LIBRO_BANCO.AGENCIA_LIBRO_BANCO, 
                      dbo.CO_LIBRO_BANCO.PAGADO_PENDIENTE_LIBRO_BANCO, @FECHAINICIO AS DESDE, @FECHAFIN AS HASTA, 
                      dbo.CO_EMPRESA.CO_EMP_NOM
FROM         dbo.CO_LIBRO_BANCO INNER JOIN
                      dbo.CO_EMPRESA ON dbo.CO_LIBRO_BANCO.CO_EMP_RUC = dbo.CO_EMPRESA.CO_EMP_RUC
WHERE     (dbo.CO_LIBRO_BANCO.FECHA_TRANSACCION_LIBRO_BANCO >= @FECHAINICIO) AND 
                      (dbo.CO_LIBRO_BANCO.FECHA_TRANSACCION_LIBRO_BANCO <= @FECHAFIN) AND (dbo.CO_LIBRO_BANCO.CO_CC_NUM = @CO_CC_NUM) AND 
                      (dbo.CO_LIBRO_BANCO.ESTADO_TRANSACCION_LIBRO_BANCO = 'ACTIVA')
GO
