SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[CO_SP_SELECT_EMPRESAS]
AS
SELECT CO_EMP_RUC,CO_EMP_NOM FROM CO_EMPRESA
GO