SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_COBRO_CLIENTE_PORID]
@CO_COM_COD_CLI_ID uniqueidentifier
AS
SELECT * FROM CO_COBRO_CLIENTE
WHERE [CO_COM_COD_CLI_ID]=@CO_COM_COD_CLI_ID
GO
