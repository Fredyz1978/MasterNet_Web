SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[HI_SP_SELECT_DICTA]
@CUR_COD INT
AS
SELECT * FROM DICTA
WHERE CUR_COD=@CUR_COD
GO