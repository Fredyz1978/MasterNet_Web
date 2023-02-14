SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS OFF
GO
CREATE FUNCTION [dbo].[funcion_prueba]()
RETURNS @table_var TABLE 
	(nom_insti varchar(100), 
	 año_lecti varchar(10),
	 nom_recto varchar(60),
	 nom_secre varchar(60),
	 nom_ciu varchar(50))
AS
BEGIN
	INSERT @table_var SELECT * FROM CN_CONFIGURACION
	RETURN 
END
GO
