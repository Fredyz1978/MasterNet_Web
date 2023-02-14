SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_NUMERO_CABECERA_ROL]
@CO_EMP_RUC CHAR(13),
@CO_ROL_CAB_MES INT,
@CO_ROL_CAB_ANO INT
AS
SELECT COUNT(*) AS CONTADOR FROM CO_CABECERA_ROL
WHERE CO_EMP_RUC=@CO_EMP_RUC AND CO_ROL_CAB_MES=@CO_ROL_CAB_MES 
AND CO_ROL_CAB_ANO=@CO_ROL_CAB_ANO
GO
