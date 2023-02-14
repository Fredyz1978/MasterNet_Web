SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_UPDATE_DETALLE_PROFORMA]
(@CO_DET_PRO_COD int
,@CO_DET_PRO_ART_COD nvarchar(20)
,@CO_DET_PRO_ART_NOM nvarchar(50)
,@CO_DET_PRO_CAN int
,@CO_DET_PRO_PRE float
,@CO_DET_PRO_DES float
,@CO_DET_PRO_TOT float
,@CO_DET_PRO_TIP_ART bit
,@CO_DET_PRO_IVA float)
AS
UPDATE [dbo].[CO_DETALLE_PROFORMA] SET
[CO_DET_PRO_ART_COD]=@CO_DET_PRO_ART_COD
,[CO_DET_PRO_ART_NOM]=@CO_DET_PRO_ART_NOM
,[CO_DET_PRO_CAN]=@CO_DET_PRO_CAN
,[CO_DET_PRO_PRE]=@CO_DET_PRO_PRE
,[CO_DET_PRO_DES]=@CO_DET_PRO_DES
,[CO_DET_PRO_TOT]=@CO_DET_PRO_TOT
,[CO_DET_PRO_TIP_ART]=@CO_DET_PRO_TIP_ART
,[CO_DET_PRO_IVA]=@CO_DET_PRO_IVA
WHERE
([CO_DET_PRO_COD]=@CO_DET_PRO_COD)
GO
