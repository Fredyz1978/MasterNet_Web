SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[CO_VW_SELECT_REPORTE_NOTAS_DEBITO]
AS
SELECT     dbo.CO_EMPRESA.CO_EMP_NOM, dbo.CO_EMPRESA.CO_EMP_DIR, dbo.CO_EMPRESA.CO_EMP_RUC, 
                      dbo.PROFESOR.PROF_APE + ' ' + dbo.PROFESOR.PROF_NOM AS EMPLEADO, dbo.CO_NOTA_DEBITO.CO_NOT_DEB_NUM, 
                      dbo.CO_NOTA_DEBITO.CO_NOT_DEB_FEC, dbo.CO_NOTA_DEBITO.CO_NOT_DEB_CON, dbo.CO_VENTA_EMPLEADO.CO_SER_COD, 
                      dbo.CO_VENTA_EMPLEADO.CO_VEN_EMP_CAN, dbo.CO_SERVICIO.CO_SER_NOM, dbo.CO_VENTA_EMPLEADO.CO_VEN_EMP_PRE, 
                      dbo.CO_VENTA_EMPLEADO.CO_VEN_EMP_DES, dbo.CO_VENTA_EMPLEADO.CO_VEN_EMP_TOT, dbo.CO_NOTA_DEBITO.CO_NOT_DEB_SUB, 
                      dbo.CO_NOTA_DEBITO.CO_NOT_DEB_DES, dbo.CO_NOTA_DEBITO.CO_NOT_DEB_TOT, dbo.CO_SERVICIO.CO_SER_COD AS Expr1
FROM         dbo.CO_SERVICIO INNER JOIN
                      dbo.CO_VENTA_EMPLEADO ON dbo.CO_SERVICIO.CO_SER_COD = dbo.CO_VENTA_EMPLEADO.CO_SER_COD INNER JOIN
                      dbo.CO_NOTA_DEBITO INNER JOIN
                      dbo.PROFESOR ON dbo.CO_NOTA_DEBITO.PROF_COD = dbo.PROFESOR.PROF_COD INNER JOIN
                      dbo.CO_EMPRESA ON dbo.CO_NOTA_DEBITO.CO_EMP_RUC = dbo.CO_EMPRESA.CO_EMP_RUC ON 
                      dbo.CO_VENTA_EMPLEADO.CO_EMP_RUC = dbo.CO_NOTA_DEBITO.CO_EMP_RUC AND 
                      dbo.CO_VENTA_EMPLEADO.CO_NOT_DEB_NUM = dbo.CO_NOTA_DEBITO.CO_NOT_DEB_NUM AND 
                      dbo.CO_VENTA_EMPLEADO.PROF_COD = dbo.CO_NOTA_DEBITO.PROF_COD
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[47] 4[30] 2[4] 3) )"
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
         Left = -96
      End
      Begin Tables = 
         Begin Table = "PROFESOR"
            Begin Extent = 
               Top = 141
               Left = 257
               Bottom = 256
               Right = 453
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "CO_EMPRESA"
            Begin Extent = 
               Top = 38
               Left = 592
               Bottom = 153
               Right = 771
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "CO_NOTA_DEBITO"
            Begin Extent = 
               Top = 0
               Left = 106
               Bottom = 176
               Right = 302
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_SERVICIO"
            Begin Extent = 
               Top = 132
               Left = 714
               Bottom = 247
               Right = 885
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "CO_VENTA_EMPLEADO"
            Begin Extent = 
               Top = 101
               Left = 478
               Bottom = 216
               Right = 673
            End
            DisplayFlags = 280
            TopColumn = 5
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 18
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 2145
        ', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_REPORTE_NOTAS_DEBITO', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane2', N' Width = 1905
         Width = 1980
         Width = 1815
         Width = 1920
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2640
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
', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_REPORTE_NOTAS_DEBITO', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=2
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_REPORTE_NOTAS_DEBITO', NULL, NULL
GO
