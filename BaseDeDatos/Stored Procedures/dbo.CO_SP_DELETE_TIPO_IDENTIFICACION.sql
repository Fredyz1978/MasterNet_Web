SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_DELETE_TIPO_IDENTIFICACION]
@CO_TIP_IDE_COD nvarchar(50)
AS
DELETE [dbo].[CO_TIPO_IDENTIFICACION] 
WHERE [CO_TIP_IDE_COD]=@CO_TIP_IDE_COD
GO
