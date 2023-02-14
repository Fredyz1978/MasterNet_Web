SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_UPDATE_CONFIGURACION_PAGO]
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
UPDATE dbo.CO_PARAMETRO_PAGO
SET TipoComprobanteContableID=@TipoComprobanteContableID,
          CuentaPagoDebe=@CuentaPagoDebe,
          CuentaPagoEfectivo=@CuentaPagoEfectivo,
          CuentaPagoCheque=@CuentaPagoCheque ,
          Automatico=@Automatico,
		  CuentaPagoTarjeta=@CuentaPagoTarjeta,
		  CuentaPagoTransferencia=@CuentaPagoTransferencia
WHERE   
CO_EMP_RUC=@CO_EMP_RUC AND AlmacenID=@AlmacenID

GO
