SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_CONCEPTO_AIR]
@co_emp_ruc char(13)
AS
SELECT * FROM [dbo].[CO_CONCEPTO_AIR]
where co_emp_ruc=@co_emp_ruc
GO
