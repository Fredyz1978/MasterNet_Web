SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_INSERT_CABECERA_ROL]
@PROF_COD char(10)
,@CO_EMP_RUC char(13)
,@CO_ROL_CAB_FEC_PAG datetime
,@CO_ROL_CAB_VAL_LET nvarchar(150)
,@CO_ROL_CAB_VAL float
,@CO_ROL_CAB_TIP nvarchar(15)
,@CO_ROL_CAB_CUE_NUM varchar(20)
,@CO_ROL_CAB_CHE nvarchar(20)
,@CO_ROL_CAB_MES int
,@CO_ROL_CAB_ANO int
AS
INSERT INTO [dbo].[CO_CABECERA_ROL]
([PROF_COD]
,[CO_EMP_RUC]
,[CO_ROL_CAB_FEC_PAG]
,[CO_ROL_CAB_VAL_LET]
,[CO_ROL_CAB_VAL]
,[CO_ROL_CAB_TIP]
,[CO_ROL_CAB_CUE_NUM]
,[CO_ROL_CAB_CHE]
,CO_ROL_CAB_MES
,CO_ROL_CAB_ano)
VALUES
(@PROF_COD
,@CO_EMP_RUC
,@CO_ROL_CAB_FEC_PAG
,@CO_ROL_CAB_VAL_LET
,@CO_ROL_CAB_VAL
,@CO_ROL_CAB_TIP
,@CO_ROL_CAB_CUE_NUM
,@CO_ROL_CAB_CHE
,@CO_ROL_CAB_MES
,@CO_ROL_CAB_ANO)
GO
