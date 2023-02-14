SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_BUSQUEDA_COBRO_CLIENTE]
@CO_EMP_RUC CHAR(13)
,@CO_COM_COB_CLI_NUM INT
,@CO_COM_COB_CLI_FEC1 DATETIME
,@CO_COM_COB_CLI_FEC2 DATETIME
,@CO_CLI_COD NVARCHAR(50)
,@CO_COM_COB_OPC CHAR(1)
AS
IF (@CO_COM_COB_OPC='N')
SELECT * FROM CO_VW_SELECT_BUSCAR_COBRO_CLIENTE
WHERE CO_EMP_RUC=@CO_EMP_RUC AND CO_COM_COB_CLI_NUM=@CO_COM_COB_CLI_NUM
ELSE IF (@CO_COM_COB_OPC='F')
SELECT * FROM CO_VW_SELECT_BUSCAR_COBRO_CLIENTE
WHERE CO_EMP_RUC=@CO_EMP_RUC AND
CO_COM_COB_CLI_FEC>=@CO_COM_COB_CLI_FEC1
AND CO_COM_COB_CLI_FEC<=@CO_COM_COB_CLI_FEC2
ELSE IF (@CO_COM_COB_OPC='C')
SELECT * FROM CO_VW_SELECT_BUSCAR_COBRO_CLIENTE
WHERE CO_EMP_RUC=@CO_EMP_RUC AND
CO_COM_COB_CLI_FEC>=@CO_COM_COB_CLI_FEC1
AND CO_COM_COB_CLI_FEC<=@CO_COM_COB_CLI_FEC2
AND CO_CLI_COD=@CO_CLI_COD
GO