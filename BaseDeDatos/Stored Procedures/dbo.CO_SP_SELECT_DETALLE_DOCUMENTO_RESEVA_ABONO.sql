SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_DETALLE_DOCUMENTO_RESEVA_ABONO]
(@CO_DOC_VEN_ID UNIQUEIDENTIFIER)
AS
SELECT * FROM [dbo].[CO_DETALLE_DOCUMENTO_RESEVA_ABONO]
WHERE CO_DOC_VEN_ID=@CO_DOC_VEN_ID
order by FECHA_ABONO desc
GO
