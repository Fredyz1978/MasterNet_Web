SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Fredy M. Aguirre
-- Create date: 01/02/2007
-- Description:	Inserta un registro en la tabla CO_PEDIDO
-- =============================================
CREATE PROCEDURE [dbo].[CO_SP_INSERT_PEDIDO] 

@CO_PED_COD numeric(18,0),
@CO_EMP_RUC char(13),
@CO_PRO_COD nvarchar(10),
@USUA_COD int,
@CO_PED_DET nvarchar(50),
@CO_PED_FEC datetime,
@CO_PED_AUT nvarchar(25),
@CO_PED_EST nvarchar(15)

AS
BEGIN

	INSERT INTO CO_PEDIDO
                      (CO_PED_COD, CO_EMP_RUC, CO_PRO_COD, USUA_COD, CO_PED_DET, CO_PED_FEC, CO_PED_AUT, CO_PED_EST)
	VALUES     (@CO_PED_COD,@CO_EMP_RUC,@CO_PRO_COD,@USUA_COD,@CO_PED_DET,@CO_PED_FEC,@CO_PED_AUT,@CO_PED_EST)

END
GO
