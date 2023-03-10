SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE PROC [dbo].[CO_SP_INSERT_DOCUMENTO_VENTA]
@CO_DOC_VEN_ID UNIQUEIDENTIFIER
,@CO_DOC_VEN_NUM nvarchar(20)
,@CO_EMP_RUC char(13)
,@CO_CLI_COD nvarchar(50)
,@CO_TIP_CLI_COD nvarchar(10)
,@CO_VEN_CED nchar(10)
,@CO_TIP_DOC_VEN_NUM int
,@CO_DOC_VEN_FEC datetime
,@CO_DOC_VEN_EST nvarchar(50)
,@CO_DOC_VEN_DET nvarchar(100)
,@CO_DOC_VEN_TOT_NET float
,@CO_DOC_VEN_POR_DES float
,@CO_DOC_VEN_DES float
,@CO_DOC_VEN_POR_IVA int
,@CO_DOC_VEN_IVA float
,@CO_DOC_VEN_TOT_PAG float
,@CO_DOC_VEN_FOR_PAG nvarchar(15)
,@CO_DOC_VEN_EFE bit
,@CO_DOC_VEN_EFE_VAL float
,@CO_DOC_VEN_CHE bit
,@CO_DOC_VEN_CHE_VAL float
,@CO_DOC_VEN_CHE_NUM nvarchar(20)
,@CO_DOC_VEN_CHE_BAN nvarchar(40)
,@CO_DOC_VEN_TAR bit
,@CO_DOC_VEN_TAR_VAL float
,@CO_DOC_VEN_TAR_NUM nvarchar(30)
,@CO_DOC_VEN_TAR_VAU nvarchar(50)
,@CO_DOC_VEN_NUM_PAG int
,@CO_DOC_VEN_USU_ALI nvarchar(15)
,@CO_DOC_VEN_TOT_LET nvarchar(150)
,@CO_DOC_VEN_GUI_NUM nvarchar(10)
,@CO_DOC_VEN_GUI_FEC_INI datetime
,@CO_DOC_VEN_GUI_FEC_TER datetime
,@CO_DOC_VEN_GUI_TIP nvarchar(50)
,@CO_DOC_VEN_GUI_NOM_TRA nvarchar(50)
,@CO_DOC_VEN_GUI_IDE nvarchar(13)
,@CO_DOC_VEN_VAL_ICE FLOAT
,@CO_DOC_VEN_VAL_IVA0 FLOAT
,@CO_DOC_VEN_TIP_PRE NVARCHAR(50)
,@CO_DOC_VEN_CHE_FEC DATETIME
,@CO_DOC_VEN_OTR NVARCHAR(100)
,@CO_DOC_VEN_TAR_NOM INT
,@AlmacenID int
,@CO_DOC_VEN_DIAS_PLA int
,@CO_DOC_VEN_FEC_PAGO datetime
,@CO_DOC_VEN_TRA bit
,@CO_DOC_VEN_TRA_VAL float
,@CO_DOC_VEN_TRA_DOC_NUM varchar(20) 
,@CO_DOC_VEN_ORIGINAL_ID uniqueidentifier
,@CO_RESERVA_ID uniqueidentifier
,@CO_PROFORMA_ID int
,@FORMA_PAGO_ID uniqueidentifier
,@CO_DOC_VEN_CRE_FOR int
AS
INSERT INTO [dbo].[CO_DOCUMENTO_VENTA]
(CO_DOC_VEN_ID
,[CO_DOC_VEN_NUM]
,[CO_EMP_RUC]
,[CO_CLI_COD]
,[CO_TIP_CLI_COD]
,[CO_VEN_CED]
,[CO_TIP_DOC_VEN_NUM]
,[CO_DOC_VEN_FEC]
,[CO_DOC_VEN_EST]
,[CO_DOC_VEN_DET]
,[CO_DOC_VEN_TOT_NET]
,[CO_DOC_VEN_POR_DES]
,[CO_DOC_VEN_DES]
,[CO_DOC_VEN_POR_IVA]
,[CO_DOC_VEN_IVA]
,[CO_DOC_VEN_TOT_PAG]
,[CO_DOC_VEN_FOR_PAG]
,[CO_DOC_VEN_EFE]
,[CO_DOC_VEN_EFE_VAL]
,[CO_DOC_VEN_CHE]
,[CO_DOC_VEN_CHE_VAL]
,[CO_DOC_VEN_CHE_NUM]
,[CO_DOC_VEN_CHE_BAN]
,[CO_DOC_VEN_TAR]
,[CO_DOC_VEN_TAR_VAL]
,[CO_DOC_VEN_TAR_NUM]
,[CO_DOC_VEN_TAR_VAU]
,[CO_DOC_VEN_NUM_PAG]
,[CO_DOC_VEN_USU_ALI]
,[CO_DOC_VEN_TOT_LET]
,CO_DOC_VEN_GUI_NUM
,CO_DOC_VEN_GUI_FEC_INI
,CO_DOC_VEN_GUI_FEC_TER
,CO_DOC_VEN_GUI_TIP
,CO_DOC_VEN_GUI_NOM_TRA
,CO_DOC_VEN_GUI_IDE
,CO_DOC_VEN_VAL_ICE
,CO_DOC_VEN_VAL_IVA0
,CO_DOC_VEN_TIP_PRE
,CO_DOC_VEN_CHE_FEC
,CO_DOC_VEN_OTR
,CO_DOC_VEN_TAR_NOM
,AlmacenID
,CO_DOC_VEN_DIAS_PLA
,CO_DOC_VEN_FEC_PAGO
,CO_DOC_VEN_TRA
,CO_DOC_VEN_TRA_VAL
,CO_DOC_VEN_TRA_DOC_NUM
,CO_DOC_VEN_ORIGINAL_ID
,CO_RESERVA_ID
,CO_PROFORMA_ID
,FORMA_PAGO_ID
,CO_DOC_VEN_CRE_FOR)
VALUES
(@CO_DOC_VEN_ID
,@CO_DOC_VEN_NUM
,@CO_EMP_RUC
,@CO_CLI_COD
,@CO_TIP_CLI_COD
,@CO_VEN_CED
,@CO_TIP_DOC_VEN_NUM
,@CO_DOC_VEN_FEC
,@CO_DOC_VEN_EST
,@CO_DOC_VEN_DET
,@CO_DOC_VEN_TOT_NET
,@CO_DOC_VEN_POR_DES
,@CO_DOC_VEN_DES
,@CO_DOC_VEN_POR_IVA
,@CO_DOC_VEN_IVA
,@CO_DOC_VEN_TOT_PAG
,@CO_DOC_VEN_FOR_PAG
,@CO_DOC_VEN_EFE
,@CO_DOC_VEN_EFE_VAL
,@CO_DOC_VEN_CHE
,@CO_DOC_VEN_CHE_VAL
,@CO_DOC_VEN_CHE_NUM
,@CO_DOC_VEN_CHE_BAN
,@CO_DOC_VEN_TAR
,@CO_DOC_VEN_TAR_VAL
,@CO_DOC_VEN_TAR_NUM
,@CO_DOC_VEN_TAR_VAU
,@CO_DOC_VEN_NUM_PAG
,@CO_DOC_VEN_USU_ALI
,@CO_DOC_VEN_TOT_LET
,@CO_DOC_VEN_GUI_NUM
,@CO_DOC_VEN_GUI_FEC_INI
,@CO_DOC_VEN_GUI_FEC_TER
,@CO_DOC_VEN_GUI_TIP
,@CO_DOC_VEN_GUI_NOM_TRA
,@CO_DOC_VEN_GUI_IDE
,@CO_DOC_VEN_VAL_ICE
,@CO_DOC_VEN_VAL_IVA0
,@CO_DOC_VEN_TIP_PRE
,@CO_DOC_VEN_CHE_FEC
,@CO_DOC_VEN_OTR
,@CO_DOC_VEN_TAR_NOM
,@AlmacenID
,@CO_DOC_VEN_DIAS_PLA
,@CO_DOC_VEN_FEC_PAGO
,@CO_DOC_VEN_TRA
,@CO_DOC_VEN_TRA_VAL
,@CO_DOC_VEN_TRA_DOC_NUM
,@CO_DOC_VEN_ORIGINAL_ID
,@CO_RESERVA_ID
,@CO_PROFORMA_ID
,@FORMA_PAGO_ID
,@CO_DOC_VEN_CRE_FOR)
GO
