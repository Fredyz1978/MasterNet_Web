SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[CO_VW_SELECT_REPORTE_EGRESO_BODEGA]
AS
SELECT     dbo.CO_EGRESO.EgresoID, dbo.CO_EGRESO.Fecha, CAST(dbo.CO_EGRESO.Numero AS NVARCHAR(20)) AS Numero,
                          (SELECT     CO_BOD_NOM
                            FROM          dbo.CO_BODEGA
                            WHERE      (CO_BOD_COD = dbo.CO_EGRESO.BodegaDestinoID)) AS BodegaDestino,
                          (SELECT     CO_BOD_NOM
                            FROM          dbo.CO_BODEGA AS CO_BODEGA_1
                            WHERE      (CO_BOD_COD = dbo.CO_EGRESO.BodegaOrigenID)) AS BodegaOrigen, dbo.CO_EGRESO.Descripcion, dbo.CO_EGRESO.Usuario, 
                      dbo.CO_EGRESO_DETALLE.CO_ART_COD, dbo.CO_EGRESO_DETALLE.CO_ART_NOM, dbo.CO_EGRESO_DETALLE.Costo, dbo.CO_EGRESO_DETALLE.Cantidad, 
                      dbo.CO_EGRESO_DETALLE.Total, dbo.CO_ALMACEN.CO_ALM_NOM
FROM         dbo.CO_EGRESO INNER JOIN
                      dbo.CO_EGRESO_DETALLE ON dbo.CO_EGRESO.EgresoID = dbo.CO_EGRESO_DETALLE.EgresoID INNER JOIN
                      dbo.CO_BODEGA AS CO_BODEGA_2 ON dbo.CO_EGRESO.BodegaOrigenID = CO_BODEGA_2.CO_BOD_COD INNER JOIN
                      dbo.CO_ALMACEN ON CO_BODEGA_2.CO_ALM_COD = dbo.CO_ALMACEN.CO_ALM_COD AND CO_BODEGA_2.CO_EMP_RUC = dbo.CO_ALMACEN.CO_EMP_RUC
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[11] 3) )"
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
               Top = 30
               Left = 252
               Bottom = 220
               Right = 424
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "CO_EGRESO_DETALLE"
            Begin Extent = 
               Top = 5
               Left = 0
               Bottom = 202
               Right = 166
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_BODEGA_2"
            Begin Extent = 
               Top = 6
               Left = 462
               Bottom = 125
               Right = 622
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_ALMACEN"
            Begin Extent = 
               Top = 6
               Left = 660
               Bottom = 110
               Right = 820
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
         SortOrde', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_REPORTE_EGRESO_BODEGA', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane2', N'r = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_REPORTE_EGRESO_BODEGA', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=2
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_REPORTE_EGRESO_BODEGA', NULL, NULL
GO
