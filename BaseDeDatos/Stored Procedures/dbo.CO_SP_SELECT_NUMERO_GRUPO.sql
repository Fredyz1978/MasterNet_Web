SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[CO_SP_SELECT_NUMERO_GRUPO]
AS
SELECT MAX(CO_GRU_COD) FROM CO_GRUPO
GO
