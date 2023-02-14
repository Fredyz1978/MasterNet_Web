SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Fredy M. Aguirre
-- Create date: 15/12/2006
-- Description:	Inserta un registro en la tabla CO_NOTIFICACIONES_STOCK
-- =============================================
CREATE PROCEDURE [dbo].[CO_SP_INSERT_NOTIFICACIONES_STOCK] 

@CO_EMP_RUC char(13),
@CO_ART_COD nvarchar(40),
@CO_NOT_STO_DET nvarchar(200),
@CO_NOT_STO_ATE bit,
@CO_TIP_NOT_STO_COD numeric(18,0),
@USUA_COD int,
@CO_NOT_STO_FEC datetime

AS
BEGIN

INSERT INTO CO_NOTIFICACIONES_STOCK
                      (CO_ART_COD, CO_EMP_RUC, CO_NOT_STO_DET, CO_TIP_NOT_STO_COD, USUA_COD, CO_NOT_STO_FEC, CO_NOT_STO_ATE)
VALUES     (@CO_ART_COD,@CO_EMP_RUC,@CO_NOT_STO_DET,@CO_TIP_NOT_STO_COD,@USUA_COD,@CO_NOT_STO_FEC,@CO_NOT_STO_ATE)
END
GO
