SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

create proc [dbo].[CO_SP_SELECT_AUTORIZACIONES]
@CO_EMP_RUC CHAR(13)
AS
SELECT * FROM CO_AUTORIZACION
WHERE CO_EMP_RUC=@CO_EMP_RUC AND Activo=1

GO