SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_UPDATE_CONFIGURACION_COBRO_CLIENTE]
@CO_EMP_RUC CHAR(13) ,
@AlmacenID INT,
@TipoComprobanteContableID INT,
@CuentaCobroEfectivo NVARCHAR(40),
@CuentaCobro2 NVARCHAR(40),
@Automatico BIT,
@CuentaCobroTransferencia varchar(40),
@CuentaCobroCheque varchar(40),
@CuentaCobroTarjeta varchar(40)
AS
UPDATE dbo.CO_PARAMETRO_COBRO SET
          TipoComprobanteContableID=@TipoComprobanteContableID ,
          CuentaCobroEfectivo=@CuentaCobroEfectivo,
          CuentaCobro2=@CuentaCobro2 ,
          Automatico=@Automatico,
		  CuentaCobroTransferencia=@CuentaCobroTransferencia,
		  CuentaCobroCheque=@CuentaCobroCheque,
		  CuentaCobroTarjeta=@CuentaCobroTarjeta
WHERE CO_EMP_RUC=@CO_EMP_RUC AND
          AlmacenID=@AlmacenID

GO
