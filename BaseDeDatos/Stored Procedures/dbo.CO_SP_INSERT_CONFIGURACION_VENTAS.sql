SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_INSERT_CONFIGURACION_VENTAS]
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
INSERT INTO dbo.CO_PARAMETRO_VENTAS
        ( CO_EMP_RUC ,
          AlmacenID ,
          TipoDocumentoVentaID ,
          TipoComprobanteContableID ,
          CuentaVentaEfectivo ,
          CuentaVentaCredito ,
          CuentaVentaCheque ,
          CuentaVentaTarjeta ,
          CuentaVentaDescuento ,
          CuentaVentaTotal ,
          CuentaVentaIVA ,
          Automatico ,
          TipoComprobanteContableInventarioID ,
          CuentaCostoMercaderia ,
          CuentaInventario ,
          CuentaVentaRetencion,
		  CuentaVentaTransferencia,
		  CuentaVentaIVA0
        )
VALUES  ( @CO_EMP_RUC ,
          @AlmacenID ,
          @TipoDocumentoVentaID ,
          @TipoComprobanteContableID ,
          @CuentaVentaEfectivo ,
          @CuentaVentaCredito ,
          @CuentaVentaCheque ,
          @CuentaVentaTarjeta ,
          @CuentaVentaDescuento ,
          @CuentaVentaTotal ,
          @CuentaVentaIVA ,
          @Automatico ,
          @TipoComprobanteContableInventarioID ,
          @CuentaCostoMercaderia ,
          @CuentaInventario ,
          @CuentaVentaRetencion,
		  @CuentaVentaTransferencia,
		  @CuentaVentaIVA0
        )

GO
