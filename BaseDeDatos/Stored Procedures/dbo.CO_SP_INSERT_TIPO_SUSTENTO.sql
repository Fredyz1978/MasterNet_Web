SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_INSERT_TIPO_SUSTENTO]
@CO_TIP_SUS_COD nvarchar(5)
,@CO_TIP_SUS_NOM nvarchar(150)
,@CO_TIP_SUS_INV BIT
,@CO_TIP_SUS_ACT BIT
,@CO_TIP_SUS_OTR BIT
AS
INSERT INTO [dbo].[CO_TIPO_SUSTENTO]
([CO_TIP_SUS_COD]
,[CO_TIP_SUS_NOM]
,[CO_TIP_SUS_INV]
,[CO_TIP_SUS_ACT]
,[CO_TIP_SUS_OTR])
VALUES
(@CO_TIP_SUS_COD
,@CO_TIP_SUS_NOM
,@CO_TIP_SUS_INV
,@CO_TIP_SUS_ACT
,@CO_TIP_SUS_OTR)
GO