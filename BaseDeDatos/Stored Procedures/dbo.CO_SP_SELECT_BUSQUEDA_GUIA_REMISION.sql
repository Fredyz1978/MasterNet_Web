SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROC [dbo].[CO_SP_SELECT_BUSQUEDA_GUIA_REMISION]
@CO_EMP_RUC CHAR(13)
,@CO_CLI_NOM NVARCHAR(100)
,@CO_DOC_VEN_FEC1 DATETIME
,@CO_DOC_VEN_FEC2 DATETIME
AS
DECLARE @LIKE AS VARCHAR(50)
SET @LIKE='%'+@CO_CLI_NOM+'%'
SELECT        dbo.CO_GUIA_REMISION.CO_DOC_VEN_GUI_COD, dbo.CO_GUIA_REMISION.CO_DOC_VEN_GUI_NUM, dbo.CO_GUIA_REMISION.CO_DOC_VEN_GUI_FEC_INI, dbo.CO_GUIA_REMISION.CO_DOC_VEN_GUI_FEC_TER, 
				dbo.CO_GUIA_REMISION.CO_DOC_VEN_GUI_PLACA, 
                         dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_NUM, dbo.CO_CLIENTE.CO_CLI_COD, dbo.CO_CLIENTE.CO_CLI_NOM, dbo.CO_GUIA_REMISION.CO_DOC_VEN_GUI_FEC_REG
FROM            dbo.CO_GUIA_REMISION INNER JOIN
                         dbo.CO_DOCUMENTO_VENTA ON dbo.CO_GUIA_REMISION.CO_DOC_VEN_ID = dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_ID INNER JOIN
                         dbo.CO_CLIENTE ON dbo.CO_DOCUMENTO_VENTA.CO_CLI_COD = dbo.CO_CLIENTE.CO_CLI_COD AND dbo.CO_DOCUMENTO_VENTA.CO_EMP_RUC = dbo.CO_CLIENTE.CO_EMP_RUC
WHERE dbo.CO_CLIENTE.CO_CLI_NOM like @LIKE AND dbo.CO_GUIA_REMISION.CO_EMP_RUC=@CO_EMP_RUC 
AND (dbo.CO_GUIA_REMISION.CO_DOC_VEN_GUI_FEC_REG>=@CO_DOC_VEN_FEC1 AND dbo.CO_GUIA_REMISION.CO_DOC_VEN_GUI_FEC_REG<=@CO_DOC_VEN_FEC2)
AND dbo.CO_GUIA_REMISION.CO_EMP_RUC=@CO_EMP_RUC
--AND (SELECT CO_ALM_COD FROM dbo.CO_BODEGA WHERE CO_BOD_COD=dbo.CO_DOCUMENTO_VENTA.CO_BOD_COD)=@CO_ALM_COD
ORDER BY dbo.CO_GUIA_REMISION.CO_DOC_VEN_GUI_NUM





GO
