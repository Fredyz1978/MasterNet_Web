SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_INSERT_CONFIGURACION_COBRO_CLIENTE]
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
INSERT INTO dbo.CO_PARAMETRO_COBRO
        ( CO_EMP_RUC ,
          AlmacenID ,
          TipoComprobanteContableID ,
          CuentaCobroEfectivo ,
          CuentaCobro2 ,
          Automatico,
		  CuentaCobroTransferencia,
		  CuentaCobroCheque,
          CuentaCobroTarjeta
        )
VALUES  (@CO_EMP_RUC ,
@AlmacenID ,
@TipoComprobanteContableID ,
@CuentaCobroEfectivo ,
@CuentaCobro2 ,
@Automatico,
@CuentaCobroTransferencia,
@CuentaCobroCheque,
@CuentaCobroTarjeta)

GO
