SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_INSERT_TEMP_ASIENTO]
@CO_EMP_RUC char(13)
,@CO_CUE_COD varchar(40)
,@CO_TEMP_ASI_FEC datetime
,@CO_TEMP_ASI_DES varchar(150)
,@CO_TEMP_ASI_DEB float
,@CO_TEMP_ASI_HAB float
,@CO_CEN_COS_COD varchar(30)
as
INSERT INTO [dbo].[CO_TEMP_ASIENTO]
VALUES
(@CO_EMP_RUC
,@CO_CUE_COD
,@CO_TEMP_ASI_FEC
,@CO_TEMP_ASI_DES
,@CO_TEMP_ASI_DEB
,@CO_TEMP_ASI_HAB
,@CO_CEN_COS_COD)
GO
