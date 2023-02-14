SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_UPDATE_CUENTA]
@CO_EMP_RUC CHAR(13),
@CO_CUE_COD VARCHAR(40),
@CO_CUE_NOM VARCHAR(60),
@CO_CUE_CAS_IMP int,
@CO_CUE_TIP varchar(20)
AS
UPDATE CO_CUENTA SET 
CO_CUE_NOM=@CO_CUE_NOM,
CO_CUE_CAS_IMP=@CO_CUE_CAS_IMP,
CO_CUE_TIP=@CO_CUE_TIP
WHERE CO_EMP_RUC=@CO_EMP_RUC AND CO_CUE_COD=@CO_CUE_COD
GO