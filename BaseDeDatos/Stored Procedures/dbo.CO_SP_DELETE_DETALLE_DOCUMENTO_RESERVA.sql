SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROC [dbo].[CO_SP_DELETE_DETALLE_DOCUMENTO_RESERVA]
@CO_DET_DOC_VEN_COD UNIQUEIDENTIFIER
AS
DELETE FROM [dbo].[CO_DETALLE_DOCUMENTO_RESERVA]
      WHERE CO_DET_DOC_VEN_COD=@CO_DET_DOC_VEN_COD
GO
