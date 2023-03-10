SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_CONTADOR_DOCUMENTO_COMPRAS]
@CO_PRO_COD NVARCHAR(10),
@CO_DOC_COM_NUM_FIS NVARCHAR(20)
AS
SELECT ISNULL(COUNT(*),0)
FROM dbo.CO_DOCUMENTO_COMPRA
WHERE CO_PRO_COD=@CO_PRO_COD
AND (CO_DOC_COM_ETA+'-'+CO_DOC_COM_PUN_EMI+'-'+CO_DOC_COM_SEC)=@CO_DOC_COM_NUM_FIS
AND CO_DOC_COM_EST='ACTIVA'
GO
