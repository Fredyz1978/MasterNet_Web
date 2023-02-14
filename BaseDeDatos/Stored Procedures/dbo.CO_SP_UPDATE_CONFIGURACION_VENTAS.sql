SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_UPDATE_CONFIGURACION_VENTAS]
		( @CO_EMP_RUC CHAR(13),
          @AlmacenID int,
          @TipoDocumentoVentaID int,
          @TipoComprobanteContableID int,
          @CuentaVentaEfectivo varchar(40),
          @CuentaVentaCredito varchar(40),
          @CuentaVentaCheque varchar(40),
          @CuentaVentaTarjeta varchar(40),
          @CuentaVentaDescuento varchar(40),
          @CuentaVentaTotal varchar(40),
          @CuentaVentaIVA varchar(40),
          @Automatico bit,
          @TipoComprobanteContableInventarioID  int,
          @CuentaCostoMercaderia varchar(40),
          @CuentaInventario varchar(40),
          @CuentaVentaRetencion varchar(40),
		  @CuentaVentaTransferencia varchar(40),
		  @CuentaVentaIVA0 varchar(40)
        )
AS
UPDATE dbo.CO_PARAMETRO_VENTAS SET
          TipoComprobanteContableID=@TipoComprobanteContableID,
          CuentaVentaEfectivo=@CuentaVentaEfectivo,
          CuentaVentaCredito=@CuentaVentaCredito,
          CuentaVentaCheque=@CuentaVentaCheque,
          CuentaVentaTarjeta=@CuentaVentaTarjeta,
          CuentaVentaDescuento=@CuentaVentaDescuento,
          CuentaVentaTotal=@CuentaVentaTotal,
          CuentaVentaIVA=@CuentaVentaIVA,
          Automatico=@Automatico,
          TipoComprobanteContableInventarioID=@TipoComprobanteContableInventarioID,
          CuentaCostoMercaderia=@CuentaCostoMercaderia,
          CuentaInventario=@CuentaInventario,
          CuentaVentaRetencion=@CuentaVentaRetencion,
		  CuentaVentaTransferencia=@CuentaVentaTransferencia,
		  CuentaVentaIVA0=@CuentaVentaIVA0
WHERE CO_EMP_RUC=@CO_EMP_RUC AND AlmacenID=@AlmacenID AND TipoDocumentoVentaID=@TipoDocumentoVentaID

GO
