SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_REPORTE_GUIA_REMISION]
@CO_DOC_VEN_NUM NVARCHAR(20) 
AS
begin
	SELECT *
	FROM CO_VW_SELECT_REPORTE_GUIA_REMISION
	WHERE CO_DOC_VEN_GUI_NUM=@CO_DOC_VEN_NUM 
end
GO
