SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_INSERT_EGRESO_BODEGA_DETALLE]
	@DetalleEgresoID UNIQUEIDENTIFIER,
          @EgresoID UNIQUEIDENTIFIER,
          @CO_ART_COD NVARCHAR(50),
          @CO_EMP_RUC CHAR(13),
          @CO_ART_NOM NVARCHAR(100),
          @Costo FLOAT,
          @Cantidad FLOAT,
          @Total FLOAT,
		  @CO_CANTIDAD_EMPAQUE float
AS
INSERT INTO dbo.CO_EGRESO_DETALLE
        ( DetalleEgresoID ,
          EgresoID ,
          CO_ART_COD ,
          CO_EMP_RUC ,
          CO_ART_NOM ,
          Costo ,
          Cantidad ,
          Total,
		  CO_CANTIDAD_EMPAQUE
        )
VALUES  ( 
			@DetalleEgresoID,
          @EgresoID,
          @CO_ART_COD,
          @CO_EMP_RUC,
          @CO_ART_NOM,
          @Costo,
          @Cantidad,
          @Total,
		  @CO_CANTIDAD_EMPAQUE
        )
GO
