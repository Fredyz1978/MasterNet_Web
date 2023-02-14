SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[CO_VW_SELECT_REPORTE_CIERRE_CAJA]
AS
--DOCUMENTOS DE VENTA TODOS EXCEPTO NC
SELECT DV.CO_DOC_VEN_NUM, C.CO_CLI_NOM, 
DV.CO_DOC_VEN_EFE_VAL, 
DV.CO_DOC_VEN_TRA_VAL,
DV.CO_DOC_VEN_CHE_VAL,
DV.CO_DOC_VEN_TAR_VAL, 
(SELECT ISNULL(SUM(DR.CO_RET_VAL),0) FROM dbo.CO_RETENCION R INNER JOIN CO_DETALLE_RETENCION DR ON R.CO_RET_COD=DR.CO_RET_COD
						WHERE R.CO_DOC_VEN_ID=DV.CO_DOC_VEN_ID) AS CO_DOC_VEN_RET_VAL,
DV.CO_DOC_VEN_TOT_PAG-
(DV.CO_DOC_VEN_EFE_VAL+
DV.CO_DOC_VEN_CHE_VAL+
DV.CO_DOC_VEN_TRA_VAL+
DV.CO_DOC_VEN_TAR_VAL+(SELECT ISNULL(SUM(DR.CO_RET_VAL),0) FROM dbo.CO_RETENCION R INNER JOIN CO_DETALLE_RETENCION DR ON R.CO_RET_COD=DR.CO_RET_COD
						WHERE R.CO_DOC_VEN_ID=DV.CO_DOC_VEN_ID)) AS CO_DOC_VEN_CRE
, DV.CO_EMP_RUC, DV.CO_DOC_VEN_FEC AS CO_DOC_VEN_FEC
FROM dbo.CO_DOCUMENTO_VENTA DV INNER JOIN dbo.CO_CLIENTE C ON DV.CO_CLI_COD = C.CO_CLI_COD AND 
DV.CO_EMP_RUC = C.CO_EMP_RUC AND DV.CO_TIP_CLI_COD = C.CO_TIP_CLI_COD
WHERE CO_DOC_VEN_EST='ACTIVA' AND DV.CO_TIP_DOC_VEN_NUM<>4
union 
--NOTAS DE CRÉDITO
SELECT DV.CO_DOC_VEN_NUM, C.CO_CLI_NOM, 
DV.CO_DOC_VEN_EFE_VAL*-1, 
DV.CO_DOC_VEN_TRA_VAL*-1,
DV.CO_DOC_VEN_CHE_VAL*-1,
DV.CO_DOC_VEN_TAR_VAL*-1, 
(SELECT ISNULL(SUM(DR.CO_RET_VAL),0) FROM dbo.CO_RETENCION R INNER JOIN CO_DETALLE_RETENCION DR ON R.CO_RET_COD=DR.CO_RET_COD
						WHERE R.CO_DOC_VEN_ID=DV.CO_DOC_VEN_ID)*-1 AS CO_DOC_VEN_RET_VAL,
(DV.CO_DOC_VEN_TOT_PAG-
(DV.CO_DOC_VEN_EFE_VAL+
DV.CO_DOC_VEN_CHE_VAL+
DV.CO_DOC_VEN_TRA_VAL+
DV.CO_DOC_VEN_TAR_VAL+(SELECT ISNULL(SUM(DR.CO_RET_VAL),0) FROM dbo.CO_RETENCION R INNER JOIN CO_DETALLE_RETENCION DR ON R.CO_RET_COD=DR.CO_RET_COD
						WHERE R.CO_DOC_VEN_ID=DV.CO_DOC_VEN_ID)))*-1 AS CO_DOC_VEN_CRE
, DV.CO_EMP_RUC, DV.CO_DOC_VEN_FEC AS CO_DOC_VEN_FEC
FROM dbo.CO_DOCUMENTO_VENTA DV INNER JOIN dbo.CO_CLIENTE C ON DV.CO_CLI_COD = C.CO_CLI_COD AND 
DV.CO_EMP_RUC = C.CO_EMP_RUC AND DV.CO_TIP_CLI_COD = C.CO_TIP_CLI_COD
WHERE CO_DOC_VEN_EST='ACTIVA' AND DV.CO_TIP_DOC_VEN_NUM=4
union
--VALORES DE LAS RESERVAS
SELECT DV.CO_DOC_VEN_NUM, C.CO_CLI_NOM, 
ISNULL(SUM(DVA.VALOR_ABONO),0) as CO_DOC_VEN_EFE_VAL, 
0 AS CO_DOC_VEN_TRA_VAL,
0 AS CO_DOC_VEN_CHE_VAL,
0 AS CO_DOC_VEN_TAR_VAL, 
0 AS CO_DOC_VEN_RET_VAL, 
0 AS CO_DOC_VEN_CRE
, DV.CO_EMP_RUC, DV.CO_DOC_VEN_FEC AS CO_DOC_VEN_FEC
FROM dbo.CO_DOCUMENTO_RESERVA DV INNER JOIN dbo.CO_CLIENTE C ON DV.CO_CLI_COD = C.CO_CLI_COD AND 
DV.CO_EMP_RUC = C.CO_EMP_RUC AND DV.CO_TIP_CLI_COD = C.CO_TIP_CLI_COD INNER JOIN dbo.CO_DETALLE_DOCUMENTO_RESEVA_ABONO DVA on DVA.CO_DOC_VEN_ID=DV.CO_DOC_VEN_ID
WHERE CO_DOC_VEN_EST='ACTIVA'
group by DV.CO_DOC_VEN_NUM, C.CO_CLI_NOM, DV.CO_EMP_RUC, DV.CO_DOC_VEN_FEC
union
--VALORES DE LOS COBROS A CLIENTES
SELECT cast(DV.CO_COM_COB_CLI_NUM as varchar(20)) as CO_DOC_VEN_NUM , 
C.CO_CLI_NOM, ISNULL(SUM(DV.CO_COM_COB_CLI_EFE_VAL),0) as CO_DOC_VEN_EFE_VAL, 
ISNULL(SUM(DV.CO_COM_COB_TRA_VAL),0) AS CO_DOC_VEN_TRA_VAL,
ISNULL(SUM(DV.CO_COM_COB_CLI_CHE_VAL),0) AS CO_DOC_VEN_CHE_VAL,
ISNULL(SUM(DV.CO_COM_COB_CLI_TAR_VAL),0) AS CO_DOC_VEN_TAR_VAL, 
0 AS CO_DOC_VEN_RET_VAL, 
0 AS CO_DOC_VEN_CRE, DV.CO_EMP_RUC, DV.CO_COM_COB_CLI_FEC AS CO_DOC_VEN_FEC
FROM dbo.CO_COBRO_CLIENTE DV INNER JOIN dbo.CO_CLIENTE C ON DV.CO_CLI_COD = C.CO_CLI_COD AND 
DV.CO_EMP_RUC = C.CO_EMP_RUC AND DV.CO_TIP_CLI_COD = C.CO_TIP_CLI_COD 
WHERE CO_COM_COB_CLI_EST='ACTIVA'
group by DV.CO_COM_COB_CLI_NUM, C.CO_CLI_NOM, DV.CO_EMP_RUC, DV.CO_COM_COB_CLI_FEC


GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "CO_DOCUMENTO_VENTA"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 286
            End
            DisplayFlags = 280
            TopColumn = 40
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1980
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_REPORTE_CIERRE_CAJA', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_REPORTE_CIERRE_CAJA', NULL, NULL
GO
