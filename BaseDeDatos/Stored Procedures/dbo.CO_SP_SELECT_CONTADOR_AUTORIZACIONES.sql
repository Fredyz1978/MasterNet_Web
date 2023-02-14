SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[CO_SP_SELECT_CONTADOR_AUTORIZACIONES]
@CO_ALM_COD INT,
@CO_TIP_DOC_VEN_NUM INT
AS
select count(*) as contador from [dbo].[CO_AUTORIZACION]
where CO_ALM_COD=@CO_ALM_COD and Activo=1 and CO_TIP_DOC_VEN_NUM=@CO_TIP_DOC_VEN_NUM
GO
