SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_DELETE_MOVIMIENTO_NOCONCILIADO]
@CO_EMP_RUC char(13),
@CO_CC_NUM varchar(10)
AS
DELETE [dbo].[CO_MOVIENTO_NOCONCILIADO]
WHERE 
CO_EMP_RUC=@CO_EMP_RUC AND
CO_CC_NUM=@CO_CC_NUM
GO
