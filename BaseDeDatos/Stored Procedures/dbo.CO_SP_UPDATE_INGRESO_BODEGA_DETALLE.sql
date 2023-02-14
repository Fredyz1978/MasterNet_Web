SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_UPDATE_INGRESO_BODEGA_DETALLE]
	@DetalleIngresoID UNIQUEIDENTIFIER,
          @Costo FLOAT,
          @Cantidad FLOAT,
          @Total FLOAT
AS
UPDATE dbo.CO_INGRESO_DETALLE SET
          Costo=@Costo ,
          Cantidad=@Cantidad ,
          Total=@Total
WHERE DetalleIngresoID=@DetalleIngresoID
GO
