SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[CO_VW_SELECT_REPORTE_ROL_TEMP]
AS
SELECT     dbo.PROFESOR.PROF_COD, dbo.PROFESOR.PROF_APE, dbo.PROFESOR.PROF_NOM, dbo.CO_RUBROS_ROL.CO_RUB_ROL_NOM, 
                      dbo.CO_ROL_TEMP.CO_RUB_ROL_VAL, dbo.CO_ROL_TEMP.CO_MES, dbo.CO_ROL_TEMP.CO_ANIO, dbo.CO_ROL_TEMP.CO_RUB_ROL_TIP, 
                      dbo.PROFESOR.CO_UBI_COD, dbo.CO_ROL_TEMP.CO_EMP_RUC
FROM         dbo.CO_ROL_TEMP INNER JOIN
                      dbo.PROFESOR ON dbo.CO_ROL_TEMP.PROF_COD = dbo.PROFESOR.PROF_COD INNER JOIN
                      dbo.CO_RUBROS_ROL ON dbo.CO_ROL_TEMP.CO_RUB_ROL_COD = dbo.CO_RUBROS_ROL.CO_RUB_ROL_COD AND 
                      dbo.CO_ROL_TEMP.CO_EMP_RUC = dbo.CO_RUBROS_ROL.CO_EMP_RUC

GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[10] 3) )"
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
         Begin Table = "CO_ROL_TEMP"
            Begin Extent = 
               Top = 31
               Left = 252
               Bottom = 185
               Right = 428
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PROFESOR"
            Begin Extent = 
               Top = 19
               Left = 498
               Bottom = 187
               Right = 684
            End
            DisplayFlags = 280
            TopColumn = 19
         End
         Begin Table = "CO_RUBROS_ROL"
            Begin Extent = 
               Top = 3
               Left = 6
               Bottom = 153
               Right = 183
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
         Width = 2145
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
', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_REPORTE_ROL_TEMP', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_REPORTE_ROL_TEMP', NULL, NULL
GO
