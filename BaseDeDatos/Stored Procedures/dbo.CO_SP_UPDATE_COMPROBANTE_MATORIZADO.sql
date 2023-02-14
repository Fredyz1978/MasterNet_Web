SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_UPDATE_COMPROBANTE_MATORIZADO]
@CO_EMP_RUC char(13)
,@CO_COM_MES int
,@CO_COM_ANIO int
AS
UPDATE CO_COMPROBANTE
SET CO_COM_MAY=1
WHERE @CO_EMP_RUC=CO_EMP_RUC AND
YEAR(CO_COM_FEC)=@CO_COM_ANIO AND
MONTH(CO_COM_FEC)=@CO_COM_MES
GO