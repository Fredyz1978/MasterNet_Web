SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_INSERT_CONFIGURACION_COMPRA]
@CO_EMP_RUC CHAR(13) ,
@AlmacenID INT,
@CO_TIP_SUS_COD NVARCHAR(5),
@TipoComprobanteContableID INT,
@CuentaInventario NVARCHAR(40),
@CuentaIVACobrado NVARCHAR(40),
@CuentaCompraEfectivo NVARCHAR(40),
@CuentaCompraCredito NVARCHAR(40),
@CuentaCompraCheque NVARCHAR(40),
@CuentaCompraDescuento NVARCHAR(40),
@Automatico BIT,
@CuentaCompraTransferencia NVARCHAR(40),
@CO_TIP_COM_COM_COD int
AS
INSERT INTO dbo.CO_PARAMETRO_COMPRAS
        ( CO_EMP_RUC ,
          AlmacenID ,
          CO_TIP_SUS_COD ,
          TipoComprobanteContableID ,
          CuentaInventario ,
          CuentaIVACobrado ,
          CuentaCompraEfectivo ,
          CuentaCompraCredito ,
          CuentaCompraCheque ,
          CuentaCompraDescuento ,
          Automatico,
		  CuentaCompraTransferencia,
		  CO_TIP_COM_COM_COD
        )
VALUES  ( @CO_EMP_RUC ,
@AlmacenID ,
@CO_TIP_SUS_COD ,
@TipoComprobanteContableID ,
@CuentaInventario ,
@CuentaIVACobrado ,
@CuentaCompraEfectivo ,
@CuentaCompraCredito ,
@CuentaCompraCheque ,
@CuentaCompraDescuento ,
@Automatico,
@CuentaCompraTransferencia,
@CO_TIP_COM_COM_COD)

GO
