SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_INSERT_CADUCIDAD]
(@CO_ART_COD nvarchar(40)
,@CO_EMP_RUC char(13)
,@CO_DOC_COM_NUM INT
,@CO_CAD_FEC_ELA datetime
,@CO_CAD_FEC_FIN datetime
,@CO_CAD_LOT nvarchar(10)
,@CO_CAD_EST bit
,@CO_CAD_CAN int
,@CO_CAD_LOC nvarchar(50))
AS
INSERT INTO [dbo].[CO_CADUCIDAD]
([CO_ART_COD]
,[CO_EMP_RUC]
,[CO_DOC_COM_NUM]
,[CO_CAD_FEC_ELA]
,[CO_CAD_FEC_FIN]
,[CO_CAD_LOT]
,[CO_CAD_EST]
,[CO_CAD_CAN ]
,[CO_CAD_LOC])
VALUES
(@CO_ART_COD
,@CO_EMP_RUC
,@CO_DOC_COM_NUM
,@CO_CAD_FEC_ELA
,@CO_CAD_FEC_FIN
,@CO_CAD_LOT
,@CO_CAD_EST
,@CO_CAD_CAN
,@CO_CAD_LOC)
GO
