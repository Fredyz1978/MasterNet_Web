SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[CN_SP_SELECT_REGISTRO_PASO1]
@ALUM_COD VARCHAR(10)
AS
SELECT ALUM_APE+' '+ALUM_NOM as ALUMNA, ALUM_PASS,ALUM_NOM_USU 
FROM ALUMNA 
WHERE ALUM_COD=@ALUM_COD AND (ALUM_EST='A' OR  ALUM_EST='I' OR ALUM_EST='U')
GO
