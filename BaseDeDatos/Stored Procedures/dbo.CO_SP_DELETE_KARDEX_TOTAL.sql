SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_DELETE_KARDEX_TOTAL]
@CO_EMP_RUC char(13)
,@CO_ART_COD nvarchar(40)
AS
DELETE dbo.CO_KARDEX_TOTAL
WHERE     (CO_EMP_RUC = @CO_EMP_RUC) AND (CO_ART_COD =@CO_ART_COD)
GO
