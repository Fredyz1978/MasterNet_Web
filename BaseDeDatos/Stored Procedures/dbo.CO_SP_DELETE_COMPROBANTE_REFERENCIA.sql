SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_DELETE_COMPROBANTE_REFERENCIA]
@CO_COM_NUM_REF UNIQUEIDENTIFIER
AS
UPDATE dbo.CO_COMPROBANTE
SET CO_COM_EST='ANULADO'
WHERE CO_COM_NUM_REF=@CO_COM_NUM_REF
GO
