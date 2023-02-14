SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [PRODUCCION].[PR_SELECT_REPORTE_TIPO_RECETA]
AS
SELECT     PRODUCCION.TIPO_PROCESO.PR_TIP_PRO_NOM, PRODUCCION.TIPO_RECETA.PR_TIP_REC_NOM, PRODUCCION.DETALLE_REGLA.CO_ART_COD, 
                      PRODUCCION.REGLA.PR_REG_NOM, PRODUCCION.DETALLE_REGLA.PR_DET_REG_POR, PRODUCCION.DETALLE_REGLA.PR_DET_REG_TIP, 
                      PRODUCCION.TIPO_PROCESO.PR_TIP_PRO_COD, PRODUCCION.TIPO_RECETA.CO_EMP_RUC, PRODUCCION.TIPO_RECETA.PR_TIP_REC_COD
FROM         PRODUCCION.TIPO_RECETA INNER JOIN
                      PRODUCCION.REGLA ON PRODUCCION.TIPO_RECETA.PR_TIP_REC_COD = PRODUCCION.REGLA.PR_TIP_REC_COD INNER JOIN
                      PRODUCCION.TIPO_PROCESO ON PRODUCCION.TIPO_RECETA.PR_TIP_PRO_COD = PRODUCCION.TIPO_PROCESO.PR_TIP_PRO_COD INNER JOIN
                      PRODUCCION.DETALLE_REGLA ON PRODUCCION.REGLA.PR_REG_COD = PRODUCCION.DETALLE_REGLA.PR_REG_COD

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
         Begin Table = "TIPO_RECETA (PRODUCCION)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 209
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "REGLA (PRODUCCION)"
            Begin Extent = 
               Top = 6
               Left = 247
               Bottom = 106
               Right = 417
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TIPO_PROCESO (PRODUCCION)"
            Begin Extent = 
               Top = 108
               Left = 247
               Bottom = 208
               Right = 419
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "DETALLE_REGLA (PRODUCCION)"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 241
               Right = 211
            End
            DisplayFlags = 280
            TopColumn = 0
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
         Width = 1500
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
        ', 'SCHEMA', N'PRODUCCION', 'VIEW', N'PR_SELECT_REPORTE_TIPO_RECETA', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane2', N' Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', 'SCHEMA', N'PRODUCCION', 'VIEW', N'PR_SELECT_REPORTE_TIPO_RECETA', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=2
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'PRODUCCION', 'VIEW', N'PR_SELECT_REPORTE_TIPO_RECETA', NULL, NULL
GO
