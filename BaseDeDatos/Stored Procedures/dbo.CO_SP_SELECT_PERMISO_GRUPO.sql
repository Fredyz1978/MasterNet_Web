SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create PROCEDURE [dbo].[CO_SP_SELECT_PERMISO_GRUPO]
@CO_GRU_COD INT
AS
SELECT DISTINCT PERM_NOM,CONT_COD,CO_GRU_COD,0 as USUA_COD
FROM PERMISO
WHERE CO_GRU_COD=@CO_GRU_COD
GO
