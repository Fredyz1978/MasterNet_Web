SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[CO_VW_SELECT_SALDO_ASIENTO]
AS
SELECT     MONTH(dbo.CO_TEMP_ASIENTO.CO_TEMP_ASI_FEC) AS MES, YEAR(dbo.CO_TEMP_ASIENTO.CO_TEMP_ASI_FEC) AS ANIO, 
                      ROUND(SUM(dbo.CO_TEMP_ASIENTO.CO_TEMP_ASI_DEB), 2) AS DEBE, ROUND(SUM(dbo.CO_TEMP_ASIENTO.CO_TEMP_ASI_HAB), 2) AS HABER, 
                      dbo.CO_CUENTA.CO_CUE_NOM, dbo.CO_CUENTA.CO_CUE_COD_ANT, dbo.CO_CUENTA.CO_CUE_COD, dbo.CO_CUENTA.CO_EMP_RUC
FROM         dbo.CO_CUENTA INNER JOIN
                      dbo.CO_TEMP_ASIENTO ON dbo.CO_CUENTA.CO_EMP_RUC = dbo.CO_TEMP_ASIENTO.CO_EMP_RUC AND 
                      dbo.CO_CUENTA.CO_CUE_COD = dbo.CO_TEMP_ASIENTO.CO_CUE_COD
GROUP BY dbo.CO_CUENTA.CO_CUE_COD, MONTH(dbo.CO_TEMP_ASIENTO.CO_TEMP_ASI_FEC), YEAR(dbo.CO_TEMP_ASIENTO.CO_TEMP_ASI_FEC), 
                      dbo.CO_CUENTA.CO_CUE_NOM, dbo.CO_CUENTA.CO_CUE_COD_ANT, dbo.CO_CUENTA.CO_EMP_RUC
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[27] 4[16] 2[21] 3) )"
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
         Begin Table = "CO_CUENTA"
            Begin Extent = 
               Top = 9
               Left = 7
               Bottom = 124
               Right = 183
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_TEMP_ASIENTO"
            Begin Extent = 
               Top = 23
               Left = 394
               Bottom = 185
               Right = 589
            End
            DisplayFlags = 280
            TopColumn = 1
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
         Width = 1050
         Width = 1005
         Width = 1500
         Width = 1500
         Width = 4605
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 4095
         Alias = 1155
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 720
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_SALDO_ASIENTO', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_SALDO_ASIENTO', NULL, NULL
GO
