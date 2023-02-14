SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_UPDATE_BANCO]
@CO_BAN_COD INT,
@CO_BAN_NOM VARCHAR(50),
@CO_BAN_DEC INT
AS
UPDATE CO_BANCO 
SET CO_BAN_NOM=@CO_BAN_NOM,CO_BAN_DEC=@CO_BAN_DEC
WHERE CO_BAN_COD=@CO_BAN_COD
GO
