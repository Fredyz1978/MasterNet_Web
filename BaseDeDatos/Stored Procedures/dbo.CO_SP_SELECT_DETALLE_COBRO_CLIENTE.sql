SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_DETALLE_COBRO_CLIENTE]
@CO_COM_COD_CLI_ID UNIQUEIDENTIFIER
AS
SELECT CC.*, DV.CO_DOC_VEN_NUM FROM CO_DETALLE_COBRO_CLIENTE CC INNER JOIN [dbo].[CO_DOCUMENTO_VENTA] DV
ON CC.CO_DOC_VEN_ID=DV.CO_DOC_VEN_ID
WHERE CO_COM_COD_CLI_ID=@CO_COM_COD_CLI_ID
GO
