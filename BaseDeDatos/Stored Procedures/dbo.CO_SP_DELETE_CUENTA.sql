SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_DELETE_CUENTA]
@CO_EMP_RUC CHAR(13)
AS
DELETE CO_CUENTA
WHERE CO_EMP_RUC=@CO_EMP_RUC
GO
