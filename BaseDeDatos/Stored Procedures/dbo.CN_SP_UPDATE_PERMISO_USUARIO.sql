SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[CN_SP_UPDATE_PERMISO_USUARIO]
@CO_GRU_COD int
as
UPDATE PERMISO SET PERM_NOM=''
WHERE @CO_GRU_COD=CO_GRU_COD
GO