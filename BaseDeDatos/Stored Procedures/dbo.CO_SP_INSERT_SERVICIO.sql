SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_INSERT_SERVICIO]
@CO_SER_COD nvarchar(10)
,@CO_TIP_SER_COD int
,@CO_SER_NOM nvarchar(50)
,@CO_SER_PRE float
,@CO_SER_POR_IVA int
,@CO_EMP_RUC CHAR(13)
,@CO_ICE_COD int
,@CO_CUE_COD varchar(40)
AS
INSERT INTO [dbo].[CO_SERVICIO]
([CO_TIP_SER_COD]
,[CO_SER_NOM]
,[CO_SER_PRE]
,[CO_SER_POR_IVA]
,[CO_EMP_RUC]
,[CO_SER_COD]
,[CO_ICE_COD]
,CO_CUE_COD
,CO_ESTADO)
 VALUES
(@CO_TIP_SER_COD
,@CO_SER_NOM
,@CO_SER_PRE
,@CO_SER_POR_IVA
,@CO_EMP_RUC
,@CO_SER_COD
,@CO_ICE_COD
,@CO_CUE_COD
,1)

GO
