SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_INGRESO_BODEGA_PORID]
@IngresoID UNIQUEIDENTIFIER
AS
SELECT *
FROM dbo.CO_INGRESO
WHERE IngresoID=@IngresoID
GO
