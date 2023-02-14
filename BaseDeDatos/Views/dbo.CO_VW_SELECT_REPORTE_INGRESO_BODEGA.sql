SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[CO_VW_SELECT_REPORTE_INGRESO_BODEGA]
AS
SELECT     dbo.CO_INGRESO.IngresoID, dbo.CO_INGRESO.Fecha, dbo.CO_INGRESO.Numero,
                          (SELECT     CO_BOD_NOM
                            FROM          dbo.CO_BODEGA
                            WHERE      (CO_BOD_COD = dbo.CO_INGRESO.BodegaDestinoID)) AS BodegaDestino,
                          (SELECT     CO_BOD_NOM
                            FROM          dbo.CO_BODEGA AS CO_BODEGA_1
                            WHERE      (CO_BOD_COD = dbo.CO_INGRESO.BodegaOrigenID)) AS BodegaOrigen, dbo.CO_INGRESO.Descripcion, dbo.CO_INGRESO.Usuario, 
                      dbo.CO_INGRESO_DETALLE.CO_ART_COD, dbo.CO_INGRESO_DETALLE.CO_ART_NOM, dbo.CO_INGRESO_DETALLE.Costo, dbo.CO_INGRESO_DETALLE.Cantidad, 
                      dbo.CO_INGRESO_DETALLE.Total, dbo.CO_ALMACEN.CO_ALM_NOM
FROM         dbo.CO_ALMACEN INNER JOIN
                      dbo.CO_BODEGA AS CO_BODEGA_2 ON dbo.CO_ALMACEN.CO_ALM_COD = CO_BODEGA_2.CO_ALM_COD AND 
                      dbo.CO_ALMACEN.CO_EMP_RUC = CO_BODEGA_2.CO_EMP_RUC INNER JOIN
                      dbo.CO_INGRESO INNER JOIN
                      dbo.CO_INGRESO_DETALLE ON dbo.CO_INGRESO.IngresoID = dbo.CO_INGRESO_DETALLE.IngresoID ON 
                      CO_BODEGA_2.CO_BOD_COD = dbo.CO_INGRESO.BodegaDestinoID
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
         Begin Table = "CO_EGRESO"
            Begin Extent = 
               Top = 34
               Left = 338
               Bottom = 192
               Right = 510
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_EGRESO_DETALLE"
            Begin Extent = 
               Top = 9
               Left = 62
               Bottom = 128
               Right = 228
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_BODEGA_2"
            Begin Extent = 
               Top = 34
               Left = 554
               Bottom = 153
               Right = 714
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_ALMACEN"
            Begin Extent = 
               Top = 28
               Left = 805
               Bottom = 132
               Right = 965
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
      Begin ColumnWidths = 14
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 2385
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
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortO', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_REPORTE_INGRESO_BODEGA', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane2', N'rder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_REPORTE_INGRESO_BODEGA', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=2
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_REPORTE_INGRESO_BODEGA', NULL, NULL
GO
