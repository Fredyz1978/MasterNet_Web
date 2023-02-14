SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_UPDATE_DOCUMENTO_RESERVA_SALDO]
@CO_DOC_VEN_ID uniqueidentifier,
@CO_DOC_VEN_SAL float
as

declare @SALDO as float
declare @DEUDA_TOTAL as float

select @SALDO=isnull(sum(valor_abono),0) from [dbo].[CO_DETALLE_DOCUMENTO_RESEVA_ABONO] where CO_DOC_VEN_ID=@CO_DOC_VEN_ID
select @DEUDA_TOTAL=isnull(sum(CO_DOC_VEN_TOT_PAG),0) from [dbo].[CO_DOCUMENTO_RESERVA] where CO_DOC_VEN_ID=@CO_DOC_VEN_ID

UPDATE [dbo].[CO_DOCUMENTO_RESERVA] SET [CO_DOC_VEN_SAL]=@DEUDA_TOTAL-@SALDO-@CO_DOC_VEN_SAL
WHERE CO_DOC_VEN_ID=@CO_DOC_VEN_ID
GO
