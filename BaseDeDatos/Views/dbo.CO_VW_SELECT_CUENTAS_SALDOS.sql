SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[CO_VW_SELECT_CUENTAS_SALDOS]
AS
SELECT     dbo.CO_MES_SALDO.CO_EMP_RUC, dbo.CO_MES_SALDO.CO_CUE_COD, dbo.CO_CUENTA.CO_CUE_NOM, dbo.CO_MES_SALDO.CO_MES_SAL_ACT, 
                      dbo.CO_MES_SALDO.CO_MES_SAL_DEB, dbo.CO_MES_SALDO.CO_MES_SAL_HAB, dbo.CO_MES_SALDO.CO_MES_SAL_ANT, 
                      dbo.CO_EMPRESA.CO_EMP_NOM, dbo.CO_CUENTA.CO_CUE_TIP, 0 as CO_CUE_NIV, dbo.CO_EMPRESA.CO_EMP_NOM_REP, 
                      dbo.CO_EMPRESA.CO_EMP_NOM_CON, dbo.CO_EMPRESA.CO_EMP_REG_CON, dbo.CO_MES_SALDO.CO_MES_NUM, 
                      dbo.CO_MES_SALDO.CO_ANIO_NUM
FROM         dbo.CO_CUENTA INNER JOIN
                      dbo.CO_MES_SALDO ON dbo.CO_CUENTA.CO_EMP_RUC = dbo.CO_MES_SALDO.CO_EMP_RUC AND 
                      dbo.CO_CUENTA.CO_CUE_COD = dbo.CO_MES_SALDO.CO_CUE_COD INNER JOIN
                      dbo.CO_EMPRESA ON dbo.CO_CUENTA.CO_EMP_RUC = dbo.CO_EMPRESA.CO_EMP_RUC


GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[42] 4[19] 2[6] 3) )"
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
               Top = 6
               Left = 38
               Bottom = 121
               Right = 214
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "CO_MES_SALDO_TEMP"
            Begin Extent = 
               Top = 7
               Left = 359
               Bottom = 122
               Right = 631
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_EMPRESA"
            Begin Extent = 
               Top = 108
               Left = 346
               Bottom = 223
               Right = 525
            End
            DisplayFlags = 280
            TopColumn = 2
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 14
         Width = 284
         Width = 1500
         Width = 1500
         Width = 2745
         Width = 2175
         Width = 1500
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
         Column = 2580
         Alias = 900
         Table = 3015
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
', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_CUENTAS_SALDOS', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_CUENTAS_SALDOS', NULL, NULL
GO
