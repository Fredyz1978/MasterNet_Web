SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_DELETE_LISTA_PRECIO]
@CO_EMP_RUC char(13)
,@ListaDePrecioID int
AS
DELETE  [dbo].[CO_LISTA_PRECIO]
WHERE CO_EMP_RUC=@CO_EMP_RUC AND ListaDePrecioID=@ListaDePrecioID




         
GO
