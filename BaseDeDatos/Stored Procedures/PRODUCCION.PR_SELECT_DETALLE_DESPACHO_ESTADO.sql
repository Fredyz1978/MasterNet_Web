SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [PRODUCCION].[PR_SELECT_DETALLE_DESPACHO_ESTADO]
@PR_DES_COD INT,
@ESTADO VARCHAR(20)
AS
SELECT COUNT(*) FROM PRODUCCION.DETALLE_DESPACHO
WHERE PR_DES_COD=@PR_DES_COD
AND ESTADO=CASE WHEN @ESTADO='' THEN ESTADO ELSE @ESTADO END
GO
