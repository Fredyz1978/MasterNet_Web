SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_PAIS]
AS
SELECT * FROM CO_PAIS
WHERE ACTIVO=1
order by NOMBRE
GO
