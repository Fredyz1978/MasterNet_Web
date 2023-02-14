SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_BUSQUEDA_CLIENTE]
@CO_EMP_RUC CHAR(13),
@CO_CLI_NOM NVARCHAR(100),
@CO_TIP_CLI_COD NVARCHAR(10),
@CO_CLI_COD NVARCHAR(13),
@CO_CLI_OPC CHAR(1)
AS
IF @CO_CLI_OPC='N'
BEGIN
DECLARE @LIKE AS VARCHAR(50)
SET @LIKE='%'+@CO_CLI_NOM+'%'
SELECT dbo.CO_CLIENTE.* , dbo.CO_TIPO_IDENTIFICACION.CO_TIP_IDE_NOM
FROM dbo.CO_CLIENTE INNER JOIN
dbo.CO_TIPO_IDENTIFICACION ON dbo.CO_CLIENTE.CO_TIP_IDE_COD = dbo.CO_TIPO_IDENTIFICACION.CO_TIP_IDE_COD
WHERE dbo.CO_CLIENTE.CO_EMP_RUC=@CO_EMP_RUC AND dbo.CO_CLIENTE.CO_CLI_NOM LIKE @LIKE 
END
ELSE IF @CO_CLI_OPC='T'
SELECT dbo.CO_CLIENTE.* , dbo.CO_TIPO_IDENTIFICACION.CO_TIP_IDE_NOM
FROM dbo.CO_CLIENTE INNER JOIN
dbo.CO_TIPO_IDENTIFICACION ON dbo.CO_CLIENTE.CO_TIP_IDE_COD = dbo.CO_TIPO_IDENTIFICACION.CO_TIP_IDE_COD
WHERE dbo.CO_CLIENTE.CO_EMP_RUC=@CO_EMP_RUC AND dbo.CO_CLIENTE.CO_TIP_CLI_COD=@CO_TIP_CLI_COD
ELSE IF @CO_CLI_OPC='C'
SELECT dbo.CO_CLIENTE.* , dbo.CO_TIPO_IDENTIFICACION.CO_TIP_IDE_NOM
FROM dbo.CO_CLIENTE INNER JOIN
dbo.CO_TIPO_IDENTIFICACION ON dbo.CO_CLIENTE.CO_TIP_IDE_COD = dbo.CO_TIPO_IDENTIFICACION.CO_TIP_IDE_COD
WHERE dbo.CO_CLIENTE.CO_EMP_RUC=@CO_EMP_RUC AND dbo.CO_CLIENTE.CO_CLI_COD=@CO_CLI_COD
ELSE IF @CO_CLI_OPC='E'
SELECT dbo.CO_CLIENTE.* , dbo.CO_TIPO_IDENTIFICACION.CO_TIP_IDE_NOM
FROM dbo.CO_CLIENTE INNER JOIN
dbo.CO_TIPO_IDENTIFICACION ON dbo.CO_CLIENTE.CO_TIP_IDE_COD = dbo.CO_TIPO_IDENTIFICACION.CO_TIP_IDE_COD
WHERE dbo.CO_CLIENTE.CO_EMP_RUC=@CO_EMP_RUC AND dbo.CO_CLIENTE.CO_CLI_CED=@CO_CLI_COD
GO
