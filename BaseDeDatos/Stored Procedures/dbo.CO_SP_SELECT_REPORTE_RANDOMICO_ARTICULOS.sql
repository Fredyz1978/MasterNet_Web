SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE proc [dbo].[CO_SP_SELECT_REPORTE_RANDOMICO_ARTICULOS]
@CO_ART_COD NVARCHAR(20),
@CO_ART_COD1 NVARCHAR(20),
@CO_ART_COD2 NVARCHAR(20),
@CO_ART_COD3 NVARCHAR(20),
@CO_ART_COD4 NVARCHAR(20),
@CO_ART_COD5 NVARCHAR(20),
@CO_ART_COD6 NVARCHAR(20),
@CO_ART_COD7 NVARCHAR(20),
@CO_ART_COD8 NVARCHAR(20),
@CO_ART_COD9 NVARCHAR(20),
@CO_ART_COD10 NVARCHAR(20),
@CO_ART_COD11 NVARCHAR(20),
@CO_ART_COD12 NVARCHAR(20),
@CO_ART_COD13 NVARCHAR(20),
@CO_ART_COD14 NVARCHAR(20),
@CO_ART_COD15 NVARCHAR(20),
@CO_ART_COD16 NVARCHAR(20),
@CO_ART_COD17 NVARCHAR(20),
@CO_ART_COD18 NVARCHAR(20),
@CO_ART_COD19 NVARCHAR(20)
AS
select CO_ART_COD, CO_ART_NOM from dbo.CO_ARTICULO
where CO_ART_COD in (@CO_ART_COD,
@CO_ART_COD1,
@CO_ART_COD2,
@CO_ART_COD3,
@CO_ART_COD4,
@CO_ART_COD5,
@CO_ART_COD6,
@CO_ART_COD7,
@CO_ART_COD8,
@CO_ART_COD9,
@CO_ART_COD10,
@CO_ART_COD11,
@CO_ART_COD12,
@CO_ART_COD13,
@CO_ART_COD14,
@CO_ART_COD15,
@CO_ART_COD16,
@CO_ART_COD17,
@CO_ART_COD18,
@CO_ART_COD19)

GO
