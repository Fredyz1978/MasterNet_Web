SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROC [dbo].[CO_SP_SELECT_ARTICULO_COMBO]
@CO_ART_COD varchar(50),
@EmpresaID char(13)
AS
SELECT [ComboID]
	  ,CO_ART_COD
      ,[ArticuloID]
      ,[EmpresaID]
      ,[ArticuloNombre]
      ,[Cantidad]
	  ,[Costo]
  FROM [dbo].[CO_ARTICULO_COMBO]
WHERE 
[CO_ART_COD]=@CO_ART_COD
and EmpresaID=@EmpresaID
GO
