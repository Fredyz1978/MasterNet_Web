SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[co_fn_ventas_empleado](@dat_fec_ini datetime,@dat_fec_fin datetime,@str_emp_ruc char(13))
RETURNS TABLE
AS
RETURN 
(
    SELECT dbo.PROFESOR.PROF_COD AS CO_PROF_COD_VENTAS, dbo.PROFESOR.PROF_APE + ' ' + dbo.PROFESOR.PROF_NOM AS V_EMPLEADO, 
	SUM(dbo.CO_NOTA_DEBITO.CO_NOT_DEB_TOT) AS VENTAS
	FROM dbo.PROFESOR INNER JOIN
    dbo.CO_NOTA_DEBITO ON dbo.PROFESOR.PROF_COD = dbo.CO_NOTA_DEBITO.PROF_COD
	where (convert(nvarchar(10),dbo.CO_NOTA_DEBITO.CO_NOT_DEB_FEC,103)>=convert(nvarchar(10),@dat_fec_ini,103) and
	convert(nvarchar(10),dbo.CO_NOTA_DEBITO.CO_NOT_DEB_FEC,103)<=convert(nvarchar(10),@dat_fec_fin,103)) and dbo.CO_NOTA_DEBITO.CO_EMP_RUC=@str_emp_ruc
	GROUP BY dbo.PROFESOR.PROF_COD, dbo.PROFESOR.PROF_APE + ' ' + dbo.PROFESOR.PROF_NOM
);
GO
