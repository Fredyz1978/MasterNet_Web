SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROC [dbo].[CO_SP_SELECT_REPORTE_SALDOS_FECHA_PROVEEDOR]
@CO_DOC_COM_FEC_EMI DATETIME
,@CO_EMP_RUC CHAR(13)
,@CO_TIP_PRO_COD NVARCHAR(10)
,@CO_PRO_COD NVARCHAR(10)
AS
SELECT CO_EMP_NOM, CO_TIP_PRO_COD, CO_PRO_COD, 
CO_PRO_NOM, SUM(CO_FACTURAS) AS Saldo_Compras, 
CO_TIP_PRO_NOM,
(SELECT SUM(CO_PAGOS) 
FROM CO_VW_SELECT_ESTADO_CUENTA_PROVEEDOR_PAGOS
WHERE CO_VW_SELECT_ESTADO_CUENTA_PROVEEDOR_PAGOS.CO_EMP_RUC=CO_VW_SELECT_ESTADO_CUENTA_PROVEEDOR.CO_EMP_RUC AND 
CO_FEC_DOC<@CO_DOC_COM_FEC_EMI AND
CO_VW_SELECT_ESTADO_CUENTA_PROVEEDOR_PAGOS.CO_PRO_COD=CO_VW_SELECT_ESTADO_CUENTA_PROVEEDOR.CO_PRO_COD
GROUP BY CO_PRO_COD, CO_EMP_RUC) AS Saldo_Pagos
FROM CO_VW_SELECT_ESTADO_CUENTA_PROVEEDOR
WHERE CO_EMP_RUC=@CO_EMP_RUC AND
CO_FEC_DOC<@CO_DOC_COM_FEC_EMI AND
CO_PRO_COD=case @CO_PRO_COD when '' then CO_PRO_COD else @CO_PRO_COD end  AND
CO_TIP_PRO_COD=case @CO_TIP_PRO_COD when '' then CO_TIP_PRO_COD else @CO_TIP_PRO_COD end
GROUP BY CO_PRO_NOM, CO_PRO_COD, CO_TIP_PRO_COD, CO_EMP_NOM, CO_TIP_PRO_NOM, CO_EMP_RUC

GO
