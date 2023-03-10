SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_INSERT_VENTA_EMPLEADO]
@CO_EMP_RUC char(13)
,@CO_NOT_DEB_NUM int
,@CO_SER_COD nvarchar(10)
,@CO_VEN_EMP_CAN int
,@CO_VEN_EMP_PRE float
,@CO_VEN_EMP_DES float
,@CO_VEN_EMP_TOT float
,@CO_VEN_EMP_USU_ALI nvarchar(14)
,@PROF_COD CHAR(13)
AS
INSERT INTO [dbo].[CO_VENTA_EMPLEADO]
([CO_EMP_RUC]
,[CO_NOT_DEB_NUM]
,[CO_SER_COD]
,[CO_VEN_EMP_CAN]
,[CO_VEN_EMP_PRE]
,[CO_VEN_EMP_DES]
,[CO_VEN_EMP_TOT]
,[CO_VEN_EMP_USU_ALI]
,[PROF_COD])
VALUES
(@CO_EMP_RUC
,@CO_NOT_DEB_NUM
,@CO_SER_COD
,@CO_VEN_EMP_CAN
,@CO_VEN_EMP_PRE
,@CO_VEN_EMP_DES
,@CO_VEN_EMP_TOT
,@CO_VEN_EMP_USU_ALI
,@PROF_COD)
GO
