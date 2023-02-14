SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE proc [dbo].[CO_SP_SELECT_LISTA_PRECIOS]
@co_emp_ruc CHAR(13)
AS
select *
from dbo.CO_LISTA_PRECIO
where co_emp_ruc=@co_emp_ruc

GO
