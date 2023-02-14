SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_UPDATE_MES_SALDO]
@CO_EMP_RUC char(13)
,@CO_CUE_COD varchar(40)
,@CO_MES_SAL_ACT float
,@CO_MES_SAL_DEB float
,@CO_MES_SAL_HAB float
,@CO_MES_SAL_ANT float
,@CO_MES_NUM INT
,@CO_ANIO_NUM INT
,@CO_CUE_COD_ANT varchar(40)
AS
UPDATE [dbo].[CO_MES_SALDO] SET
           CO_MES_SAL_ACT=@CO_MES_SAL_ACT
           ,CO_MES_SAL_DEB=@CO_MES_SAL_DEB
           ,CO_MES_SAL_HAB=@CO_MES_SAL_HAB
		   ,CO_MES_SAL_ANT=@CO_MES_SAL_ANT
		   ,CO_CUE_COD_ANT=@CO_CUE_COD_ANT
     WHERE
           CO_EMP_RUC=@CO_EMP_RUC
			AND CO_CUE_COD=@CO_CUE_COD
			AND CO_MES_NUM=@CO_MES_NUM
			AND CO_ANIO_NUM=@CO_ANIO_NUM

GO