SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_INSERT_CONFIGURACION_PAGO]
@CO_EMP_RUC CHAR(13) ,
@AlmacenID INT,
@TipoComprobanteContableID INT,
@CuentaPagoDebe NVARCHAR(40),
@CuentaPagoEfectivo NVARCHAR(40),
@CuentaPagoCheque NVARCHAR(40),
@Automatico BIT,
@CuentaPagoTarjeta nvarchar(40),
@CuentaPagoTransferencia nvarchar(40)
AS
INSERT INTO dbo.CO_PARAMETRO_PAGO
        ( CO_EMP_RUC ,
          AlmacenID ,
          TipoComprobanteContableID ,
          CuentaPagoDebe ,
          CuentaPagoEfectivo ,
          CuentaPagoCheque ,
          Automatico,
		  CuentaPagoTarjeta,
		  CuentaPagoTransferencia)
VALUES  
(@CO_EMP_RUC ,
@AlmacenID ,
@TipoComprobanteContableID ,
@CuentaPagoDebe ,
@CuentaPagoEfectivo ,
@CuentaPagoCheque ,
@Automatico,
@CuentaPagoTarjeta,
@CuentaPagoTransferencia)

GO
