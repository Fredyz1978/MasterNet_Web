SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_INSERT_INGRESO_BODEGA]
@IngresoID UNIQUEIDENTIFIER,
@CO_EMP_RUC CHAR(13),
@Fecha DATETIME,
@Numero NVARCHAR(20),
@BodegaOrigenID INT,
@BodegaDestinoID INT,
@Descripcion NVARCHAR(500),
@Estado NVARCHAR(15),
@Usuario NVARCHAR(15),
@Transferencia bit,
@AlmacenID int
AS

INSERT INTO dbo.CO_INGRESO
        ( IngresoID ,
		  CO_EMP_RUC,
          Fecha ,
          Numero ,
          BodegaOrigenID ,
          BodegaDestinoID ,
          Descripcion ,
          Estado ,
          Usuario,
		  Transferencia,
		  AlmacenID
        )
VALUES  ( 
			@IngresoID,
			@CO_EMP_RUC,
			@Fecha,
			@Numero,
			@BodegaOrigenID,
			@BodegaDestinoID,
			@Descripcion,
			@Estado,
			@Usuario,
			@Transferencia,
			@AlmacenID
        )
GO
