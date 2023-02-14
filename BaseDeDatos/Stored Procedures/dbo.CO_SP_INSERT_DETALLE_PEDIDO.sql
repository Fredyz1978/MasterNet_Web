SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Fredy M. Aguirre
-- Create date: 02/01/2007
-- Description:	Inserta un registro en la tabla CO_DETALLE_PEDIDO
-- =============================================
CREATE PROCEDURE [dbo].[CO_SP_INSERT_DETALLE_PEDIDO] 

@CO_PED_COD numeric(18,0),
@CO_ART_COD nvarchar(40),
@CO_EMP_RUC char(13),
@CO_DET_PE_CANT int

AS
BEGIN

INSERT INTO CO_DETALLE_PEDIDO
                      (CO_PED_COD, CO_ART_COD, CO_EMP_RUC, CO_DET_PE_CANT)
VALUES     (@CO_PED_COD,@CO_ART_COD,@CO_EMP_RUC,@CO_DET_PE_CANT)

END
GO
