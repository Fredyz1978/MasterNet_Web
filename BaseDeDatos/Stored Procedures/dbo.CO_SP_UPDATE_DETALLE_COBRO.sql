SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_UPDATE_DETALLE_COBRO]
@CO_COM_COB_NUM int
,@CO_EMP_RUC char(13)
,@CO_DET_COB_COD int
,@CO_NOT_DEB_NUM int
,@CO_DET_COB_TIP nchar(10)
,@CO_DET_COB_CON nvarchar(50)
,@CO_DET_COB_VAL float
,@CO_DET_COB_FEC datetime
AS
UPDATE [dbo].[CO_DETALLE_COBRO] SET
[CO_DET_COB_TIP]=@CO_DET_COB_TIP
,[CO_DET_COB_CON]=@CO_DET_COB_CON
,[CO_DET_COB_VAL]=@CO_DET_COB_VAL
,[CO_DET_COB_FEC]=@CO_DET_COB_FEC
WHERE 
([CO_COM_COB_NUM]=@CO_COM_COB_NUM
AND[CO_EMP_RUC]=@CO_EMP_RUC
AND [CO_DET_COB_COD]=@CO_DET_COB_COD
AND [CO_NOT_DEB_NUM]=@CO_NOT_DEB_NUM)
GO