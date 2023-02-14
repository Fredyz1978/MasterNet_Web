SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_UPDATE_EGRESO_BODEGA_ESTADO]
	@EgresoID UNIQUEIDENTIFIER,
	@Estado NVARCHAR(50)
AS
UPDATE dbo.CO_EGRESO SET
          Estado=@Estado
WHERE EgresoID=@EgresoID
GO
