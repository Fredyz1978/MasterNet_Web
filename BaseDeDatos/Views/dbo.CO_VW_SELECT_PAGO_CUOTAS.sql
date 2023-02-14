SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[CO_VW_SELECT_PAGO_CUOTAS]
AS
SELECT     dbo.CO_PAGO_CUOTA.CO_PAG_COD, dbo.CO_PAGO_CUOTA.CO_PAG_VAL, dbo.CO_PAGO_CUOTA.CO_PAG_FEC, dbo.CO_PAGO_CUOTA.CO_PAG_CON,
                       dbo.CO_PAGO_CUOTA.CO_PAG_EST, dbo.CO_PAGO_CUOTA.CO_NOT_DEB_NUM, dbo.CO_PAGO_CUOTA.CO_PAG_VAL_IMP, 
                      dbo.CO_NOTA_DEBITO.PROF_COD, dbo.CO_NOTA_DEBITO.CO_EMP_RUC
FROM         dbo.CO_PAGO_CUOTA INNER JOIN
                      dbo.CO_NOTA_DEBITO ON dbo.CO_PAGO_CUOTA.CO_EMP_RUC = dbo.CO_NOTA_DEBITO.CO_EMP_RUC AND 
                      dbo.CO_PAGO_CUOTA.CO_NOT_DEB_NUM = dbo.CO_NOTA_DEBITO.CO_NOT_DEB_NUM AND 
                      dbo.CO_PAGO_CUOTA.PROF_COD = dbo.CO_NOTA_DEBITO.PROF_COD
WHERE     (dbo.CO_PAGO_CUOTA.CO_PAG_VAL <> 0)
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[42] 4[23] 2[12] 3) )"
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
         Begin Table = "CO_PAGO_CUOTA"
            Begin Extent = 
               Top = 13
               Left = 349
               Bottom = 213
               Right = 526
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "CO_NOTA_DEBITO"
            Begin Extent = 
               Top = 25
               Left = 87
               Bottom = 200
               Right = 289
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
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 2160
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1530
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2175
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
', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_PAGO_CUOTAS', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_PAGO_CUOTAS', NULL, NULL
GO
