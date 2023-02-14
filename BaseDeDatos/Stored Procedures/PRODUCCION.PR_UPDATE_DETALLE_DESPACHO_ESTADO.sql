SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [PRODUCCION].[PR_UPDATE_DETALLE_DESPACHO_ESTADO]
@PR_DET_DES_COD INT,
@ESTADO VARCHAR(20)
AS
UPDATE PRODUCCION.DETALLE_DESPACHO SET ESTADO=@ESTADO WHERE PR_DET_DES_COD=@PR_DET_DES_COD
GO
