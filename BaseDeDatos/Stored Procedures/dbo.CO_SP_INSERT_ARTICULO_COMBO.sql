SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_INSERT_ARTICULO_COMBO]
@CO_EMP_RUC char(13)
,@CO_ART_COD nvarchar(50)
,@ArticuloID nvarchar(50)
,@ArticuloNombre nvarchar(100)
,@Cantidad int
,@Costo float
AS
INSERT INTO [dbo].[CO_ARTICULO_COMBO]
(EmpresaID
,CO_ART_COD
,ArticuloID
,ArticuloNombre
,Cantidad
,Costo)
VALUES
(@CO_EMP_RUC
,@CO_ART_COD
,@ArticuloID
,@ArticuloNombre
,@Cantidad
,@Costo)
GO
