SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create PROCEDURE [dbo].[CN_SP_DELETE_PERMISO_USUARIO]
@CO_GRU_COD int
as
DELETE PERMISO
WHERE @CO_GRU_COD=CO_GRU_COD
GO
