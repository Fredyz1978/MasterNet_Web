SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[CO_VW_SELECT_PRESUPUESTO_CONSOLIDADO]
AS
SELECT     dbo.CO_PRESUPUESTO.CO_PRE_VAL_ACT, dbo.CO_PRESUPUESTO.CO_PRE_VAL_NUE, dbo.CO_PRESUPUESTO.CO_PRE_ANO, 
                      dbo.CO_EMPRESA.CO_EMP_NOM, dbo.CO_EMPRESA.CO_EMP_RUC, dbo.CO_ITEM_PRESUPUESTO.CO_ITE_PRE_COD, 
                      dbo.CO_ITEM_PRESUPUESTO.CO_ITE_PRE_NOM, dbo.CO_ITEM_PRESUPUESTO.CO_ITE_PRE_DES, 
                      dbo.CO_ITEM_PRESUPUESTO.CO_ITE_PRE_TIP, dbo.CO_ITEM_PRESUPUESTO.CO_ITE_PRE_COD_PAD, 
                      dbo.CO_ITEM_PRESUPUESTO.CO_ITE_PRE_CUE
FROM         dbo.CO_EMPRESA INNER JOIN
                      dbo.CO_ITEM_PRESUPUESTO ON dbo.CO_EMPRESA.CO_EMP_RUC = dbo.CO_ITEM_PRESUPUESTO.CO_EMP_RUC INNER JOIN
                      dbo.CO_PRESUPUESTO ON dbo.CO_ITEM_PRESUPUESTO.CO_EMP_RUC = dbo.CO_PRESUPUESTO.CO_EMP_RUC AND 
                      dbo.CO_ITEM_PRESUPUESTO.CO_ITE_PRE_COD = dbo.CO_PRESUPUESTO.CO_ITE_PRE_COD
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[42] 4[20] 2[9] 3) )"
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
         Begin Table = "CO_EMPRESA"
            Begin Extent = 
               Top = 68
               Left = 159
               Bottom = 183
               Right = 338
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_ITEM_PRESUPUESTO"
            Begin Extent = 
               Top = 51
               Left = 406
               Bottom = 200
               Right = 603
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "CO_PRESUPUESTO"
            Begin Extent = 
               Top = 55
               Left = 708
               Bottom = 170
               Right = 880
            End
            DisplayFlags = 280
            TopColumn = 4
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 11
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 2295
         Width = 1500
         Width = 1500
         Width = 2565
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
', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_PRESUPUESTO_CONSOLIDADO', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_PRESUPUESTO_CONSOLIDADO', NULL, NULL
GO
