SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_CUENTA_CORRIENTE_BANCO]
@CO_BAN_COD INT
AS
SELECT COUNT(*)
FROM dbo.CO_CUENTA_CORRIENTE
where [CO_BAN_COD]=@CO_BAN_COD
GO
