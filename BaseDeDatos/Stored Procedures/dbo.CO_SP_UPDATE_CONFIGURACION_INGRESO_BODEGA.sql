SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_UPDATE_CONFIGURACION_INGRESO_BODEGA]
@CO_EMP_RUC CHAR(13) ,
@AlmacenID INT,
@TipoComprobanteContableID INT,
@CuentaCostoMercaderia NVARCHAR(40),
@CuentaInventario NVARCHAR(40),
@Automatico BIT
AS
UPDATE dbo.CO_PARAMETRO_INGRESO SET
          TipoComprobanteContableID=@TipoComprobanteContableID ,
          CuentaCostoMercaderia=@CuentaCostoMercaderia,
          CuentaInventario=@CuentaInventario ,
          Automatico=@Automatico
        
WHERE CO_EMP_RUC=@CO_EMP_RUC AND
          AlmacenID=@AlmacenID
GO
