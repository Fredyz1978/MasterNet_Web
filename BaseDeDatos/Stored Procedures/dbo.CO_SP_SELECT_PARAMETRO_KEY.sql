SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_PARAMETRO_KEY]
@EMPRESA_ID CHAR(13),
@PARAMETRO_KEY VARCHAR(50)
AS
SELECT * FROM CO_PARAMETRO
WHERE EMPRESA_ID=@EMPRESA_ID AND PARAMETRO_KEY=@PARAMETRO_KEY
GO