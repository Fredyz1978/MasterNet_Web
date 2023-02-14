SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_DELETE_VENDEDOR]
@CO_VEN_CED nchar(10)
,@CO_EMP_RUC char(13)
AS
UPDATE [dbo].[CO_VENDEDOR] SET CO_ESTADO=0
WHERE ([CO_VEN_CED]=@CO_VEN_CED AND [CO_EMP_RUC]=@CO_EMP_RUC)
GO