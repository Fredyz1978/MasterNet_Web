SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [PRODUCCION].[CO_SP_SELECT_BUSQUEDA_PEDIDOS]
--@CO_EMP_RUC CHAR(13)
@PR_PRO_COD INT
,@PR_PRO_FEC DATETIME
,@ESTADO varchar(20)
AS
SELECT *
FROM [PRODUCCION].[DESPACHO]
WHERE 
PR_DES_FEC>=DATEADD(DAY,-7,GETDATE())
--dbo.CO_PROFORMA.CO_EMP_RUC=@CO_EMP_RUC 
AND 
PR_DES_COD=case when @PR_PRO_COD is null then PR_DES_COD else @PR_PRO_COD end
AND PR_DES_FEC= case when @PR_PRO_FEC is null then PR_DES_FEC else @PR_PRO_FEC end
AND TIPO='INGRESO_BODEGA'
AND ESTADO=case when @ESTADO='' then ESTADO else @ESTADO end
GO
