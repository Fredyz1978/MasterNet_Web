SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_INSERT_EGRESO_BODEGA]
@EgresoID UNIQUEIDENTIFIER,
@CO_EMP_RUC CHAR(13),
@Fecha DATETIME,
@Numero VARCHAR(20),
@BodegaOrigenID INT,
@BodegaDestinoID INT,
@Descripcion NVARCHAR(500),
@Estado NVARCHAR(15),
@Usuario NVARCHAR(15),
@AlmacenID int,
@Transferencia bit
AS

INSERT INTO dbo.CO_EGRESO
        ( EgresoID ,
		  CO_EMP_RUC,
          Fecha ,
          Numero ,
          BodegaOrigenID ,
          BodegaDestinoID ,
          Descripcion ,
          Estado ,
          Usuario,
		  AlmacenID,
		  Transferencia
        )
VALUES  ( 
			@EgresoID,
			@CO_EMP_RUC,
			@Fecha,
			@Numero,
			@BodegaOrigenID,
			@BodegaDestinoID,
			@Descripcion,
			@Estado,
			@Usuario,
			@AlmacenID,
			@Transferencia
        )
GO
