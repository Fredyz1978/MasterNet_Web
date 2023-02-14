SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE proc [dbo].[CO_RETENCION_REOC]
@CO_DOC_COM_ID UNIQUEIDENTIFIER
AS
SELECT distinct R.CO_RET_AUT as autRet, R.CO_RET_SER1 as estabRet, CO_RET_SER2 AS ptoEmiRet,
		CO_RET_NUM_REF AS secRet, CO_RET_BEN_FEC_EMI AS fechaEmiRet
FROM CO_RETENCION R
WHERE CO_DOC_COM_ID=@CO_DOC_COM_ID
GO
