SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_UPDATE_CONFIGURACION_COMPRA]
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
UPDATE dbo.CO_PARAMETRO_COMPRAS SET
          TipoComprobanteContableID=@TipoComprobanteContableID ,
          CuentaInventario=@CuentaInventario ,
          CuentaIVACobrado=@CuentaIVACobrado ,
          CuentaCompraEfectivo=@CuentaCompraEfectivo ,
          CuentaCompraCredito=@CuentaCompraCredito ,
          CuentaCompraCheque=@CuentaCompraCheque,
          CuentaCompraDescuento=@CuentaCompraDescuento ,
          Automatico=@Automatico,
		  CuentaCompraTransferencia=@CuentaCompraTransferencia
WHERE CO_EMP_RUC=@CO_EMP_RUC AND
AlmacenID=@AlmacenID AND
CO_TIP_SUS_COD=@CO_TIP_SUS_COD AND
CO_TIP_COM_COM_COD=@CO_TIP_COM_COM_COD

GO
