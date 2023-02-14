SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create PROC [dbo].[CO_SP_DELETE_CARGO]
@CO_EMP_RUC CHAR(13)
,@CO_CAR_COD INT
AS
DELETE [dbo].[CO_CARGO] 
WHERE 
CO_EMP_RUC=@CO_EMP_RUC AND CO_CAR_COD=@CO_CAR_COD
GO
