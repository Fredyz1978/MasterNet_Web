SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_DELETE_BANCO]
@CO_BAN_COD INT
AS
DELETE CO_BANCO WHERE CO_BAN_COD=@CO_BAN_COD
GO
