SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [PRODUCCION].[PR_INSERT_DESPACHO]
(@PR_DES_COD int
,@PR_DES_FEC datetime
,@TIPO VARCHAR(20)
,@ESTADO VARCHAR(20)
,@NUMERO_INGRESO INT)
AS
INSERT INTO [PRODUCCION].[DESPACHO]
([PR_DES_COD]
,[PR_DES_FEC]
,[TIPO]
,[ESTADO]
,[NUMERO_INGRESO])
VALUES
(@PR_DES_COD
,@PR_DES_FEC
,@TIPO
,@ESTADO
,@NUMERO_INGRESO)

GO
