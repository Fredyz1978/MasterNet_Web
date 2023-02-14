SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_UPDATE_INGRESO_BODEGA]
@IngresoID UNIQUEIDENTIFIER,
@CO_EMP_RUC CHAR(13),
@BodegaOrigenID INT,
@BodegaDestinoID INT,
@Descripcion NVARCHAR(500),
@Estado NVARCHAR(15),
@Transferencia bit,
@AlmacenID int
AS
UPDATE dbo.CO_INGRESO SET
BodegaOrigenID=@BodegaOrigenID,
BodegaDestinoID=@BodegaDestinoID,
Descripcion=@Descripcion,
Estado=@Estado,
Transferencia=@Transferencia,
AlmacenID=@AlmacenID
where
CO_EMP_RUC=@CO_EMP_RUC
AND IngresoID=@IngresoID
GO
