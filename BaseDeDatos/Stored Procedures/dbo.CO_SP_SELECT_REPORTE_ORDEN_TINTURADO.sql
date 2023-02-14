SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_REPORTE_ORDEN_TINTURADO]
@fecha_inicio_desde AS DATETIME
,@fecha_inicio_hasta AS DATETIME
,@estado varchar(20)
,@gamaColor varchar(20)
,@codigoColor varchar(20)
AS
select * from [PRODUCCION].[ORDEN_TINTURADO]
where (cast(FECHA_INICIO_PROCESO as date)>=cast(@fecha_inicio_desde as date) and cast(FECHA_INICIO_PROCESO as date)<=cast(@fecha_inicio_hasta as date))
and ESTADO=case when @estado='' then ESTADO else @estado end
and GAMA_COLOR like @gamaColor+'%'
and GAMA_COLOR like '%'+@codigoColor
order by [PR_PRO_COD]
GO
