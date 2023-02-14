SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_UPDATE_EGRESO_BODEGA]
@EgresoID UNIQUEIDENTIFIER,
@CO_EMP_RUC CHAR(13),
@BodegaOrigenID INT,
@BodegaDestinoID INT,
@Descripcion NVARCHAR(500),
@Estado NVARCHAR(15),
@AlmacenID int,
@Transferencia bit
AS
UPDATE dbo.CO_EGRESO SET
BodegaOrigenID=@BodegaOrigenID,
BodegaDestinoID=@BodegaDestinoID,
Descripcion=@Descripcion,
Estado=@Estado,
AlmacenID=@AlmacenID,
Transferencia=@Transferencia
where
CO_EMP_RUC=@CO_EMP_RUC
AND EgresoID=@EgresoID
GO
