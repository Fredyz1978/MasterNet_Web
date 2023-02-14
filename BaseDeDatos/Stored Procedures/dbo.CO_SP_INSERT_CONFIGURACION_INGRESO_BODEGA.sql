SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_INSERT_CONFIGURACION_INGRESO_BODEGA]
@CO_EMP_RUC CHAR(13) ,
@AlmacenID INT,
@TipoComprobanteContableID INT,
@CuentaCostoMercaderia NVARCHAR(40),
@CuentaInventario NVARCHAR(40),
@Automatico BIT
AS
INSERT INTO dbo.CO_PARAMETRO_INGRESO
        ( CO_EMP_RUC ,
          AlmacenID ,
          TipoComprobanteContableID ,
          CuentaCostoMercaderia ,
          CuentaInventario ,
          Automatico
        )
VALUES  (@CO_EMP_RUC ,
@AlmacenID ,
@TipoComprobanteContableID ,
@CuentaCostoMercaderia ,
@CuentaInventario ,
@Automatico)
GO
