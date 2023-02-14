SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_UPDATE_CUENTA_CORRIENTE_CHEQUE]
@CO_CC_NUM VARCHAR(10),
@CO_EMP_RUC CHAR(13),
@CO_CC_NUM_CHE NVARCHAR(50)
AS
UPDATE CO_CUENTA_CORRIENTE SET
CO_CC_NUM_CHE=@CO_CC_NUM_CHE
WHERE CO_CC_NUM=@CO_CC_NUM and CO_EMP_RUC=@CO_EMP_RUC
GO