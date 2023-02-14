SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- User Defined Function

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[CO_FN_RENTA_VENTAS]
(
	@CO_EMP_RUC CHAR(13), @CO_CLI_COD VARCHAR(50), @CO_MES INT, @CO_ANIO INT
)
RETURNS FLOAT
AS
BEGIN
	DECLARE @RENTA AS FLOAT

	select @RENTA=SUM(CO_RET_VAL) from CO_DETALLE_RETENCION where CO_RET_COD in (
select CO_RET_COD from CO_RETENCION where CO_DOC_VEN_ID in (
			SELECT CO_DOC_VEN_ID FROM CO_DOCUMENTO_VENTA WHERE CO_DOCUMENTO_VENTA.CO_DOC_VEN_EST<>'ANULADA' AND CO_CLI_COD=@CO_CLI_COD AND CO_EMP_RUC=@CO_EMP_RUC
				AND MONTH(CO_DOC_VEN_FEC)=@CO_MES AND YEAR(CO_DOC_VEN_FEC)=@CO_ANIO))

	-- Return the result of the function
	RETURN @RENTA

END
GO
