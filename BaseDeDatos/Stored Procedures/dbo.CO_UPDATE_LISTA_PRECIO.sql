SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_UPDATE_LISTA_PRECIO]
@CO_EMP_RUC char(13)
,@Nombre nvarchar(250)
,@Rentabilidad float
,@ListaDePrecioID int
AS
UPDATE [dbo].[CO_LISTA_PRECIO]
SET Nombre=@Nombre,Rentabilidad=@Rentabilidad
WHERE CO_EMP_RUC=@CO_EMP_RUC AND ListaDePrecioID=@ListaDePrecioID

         
GO
