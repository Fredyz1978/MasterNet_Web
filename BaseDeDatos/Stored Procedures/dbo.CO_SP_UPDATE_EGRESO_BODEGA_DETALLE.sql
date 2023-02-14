SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_UPDATE_EGRESO_BODEGA_DETALLE]
	@DetalleEgresoID UNIQUEIDENTIFIER,
          @Costo FLOAT,
          @Cantidad FLOAT,
          @Total FLOAT,
		  @CO_CANTIDAD_EMPAQUE float
AS
UPDATE dbo.CO_EGRESO_DETALLE SET
          Costo=@Costo ,
          Cantidad=@Cantidad ,
          Total=@Total,
		  CO_CANTIDAD_EMPAQUE=@CO_CANTIDAD_EMPAQUE
WHERE DetalleEgresoID=@DetalleEgresoID
GO
