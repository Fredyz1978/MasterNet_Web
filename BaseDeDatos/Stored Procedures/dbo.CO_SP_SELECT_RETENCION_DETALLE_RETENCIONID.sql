SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_RETENCION_DETALLE_RETENCIONID]
(@CO_RET_COD UNIQUEIDENTIFIER)
AS
SELECT * FROM [dbo].[CO_DETALLE_RETENCION]
WHERE CO_RET_COD=@CO_RET_COD
GO
