SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_DELETE_PERMISO_GRUPO_USER]
@USUA_COD INT,
@CO_GRU_COD INT
AS
DELETE PERMISO
WHERE USUA_COD=@USUA_COD AND CO_GRU_COD=@CO_GRU_COD
GO