SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_NUMERO_LIBRO_BANCO_PLUS]
AS
SELECT MAX(CODIGO_LIBRO_BANCO) AS CO_COM_NUM_MAX
FROM dbo.CO_LIBRO_BANCO
GO
