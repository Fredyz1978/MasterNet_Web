SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_TIPO_ACTIVO]
@CO_EMP_RUC CHAR(13)
AS
SELECT * FROM CO_TIPO_ACTIVO WHERE CO_EMP_RUC=@CO_EMP_RUC
GO
