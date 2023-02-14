SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[ElegirTabla] 
@NombreTabla VarChar(128) 
AS
DECLARE @sSQL VarChar(1000)
--El truco esta en tener la sentencia dentro de una variable
SELECT sSQL = 'SELECT * FROM ' 
SELECT @sSQL = @sSQL + @NombreTabla
--Y ejecutar ese texto contenido en nuestra variable
EXEC ( @sSQL)
GO
