SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_DIARIO_MENOR]
@CO_COM_NUM INT
,@CO_COM_FEC DATETIME
,@CO_TIP_COM_COD INT
,@CO_EMP_RUC CHAR(13)
AS
SELECT COUNT(*) AS CONTADOR 
FROM CO_COMPROBANTE
where CO_TIP_COM_COD=@CO_TIP_COM_COD AND CO_EMP_RUC=@CO_EMP_RUC
and ((CO_COM_NUM<@CO_COM_NUM AND CONVERT(NVARCHAR(10),co_com_fec,101)>CONVERT(NVARCHAR(10),@CO_COM_FEC,101))
or (CO_COM_NUM>@CO_COM_NUM AND CONVERT(NVARCHAR(10),co_com_fec,101)<CONVERT(NVARCHAR(10),@CO_COM_FEC,101)))
GO
