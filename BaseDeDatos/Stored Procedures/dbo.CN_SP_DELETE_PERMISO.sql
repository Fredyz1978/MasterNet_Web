SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[CN_SP_DELETE_PERMISO]
@PERM_NOM varchar(80),
@CONT_COD int,
@CO_GRU_COD int
as
DELETE PERMISO
WHERE PERM_NOM=@PERM_NOM AND
CONT_COD=@CONT_COD AND
CO_GRU_COD=@CO_GRU_COD
GO
