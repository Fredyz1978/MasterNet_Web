SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_DELETE_COMBO_ARTICULO]
@ComboID INT
AS
DELETE dbo.CO_ARTICULO_COMBO
WHERE ComboID=@ComboID
GO