SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_UPDATE_DOCUMENTO_RESERVA_ESTADO]
@CO_DOC_VEN_ID UNIQUEIDENTIFIER
AS
update [dbo].[CO_DOCUMENTO_RESERVA] set [CO_DOC_VEN_EST]='FACTURADA'
where [CO_DOC_VEN_ID]=@CO_DOC_VEN_ID
GO