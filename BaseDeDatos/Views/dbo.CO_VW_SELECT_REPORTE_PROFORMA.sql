SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE VIEW [dbo].[CO_VW_SELECT_REPORTE_PROFORMA]
AS
SELECT        dbo.CO_EMPRESA.CO_EMP_RUC, dbo.CO_EMPRESA.CO_EMP_DIR, dbo.CO_CLIENTE.CO_CLI_NOM, dbo.CO_CLIENTE.CO_CLI_DIR, dbo.CO_CLIENTE.CO_CLI_TEL, dbo.CO_EMPRESA.CO_EMP_NOM, 
                         dbo.CO_PROFORMA.CO_PRO_COD, dbo.CO_PROFORMA.CO_PRO_FEC, dbo.CO_VENDEDOR.CO_VEN_NOM, dbo.CO_ALMACEN.CO_ALM_NOM, dbo.CO_DETALLE_PROFORMA.CO_DET_PRO_ART_COD, 
                         dbo.CO_DETALLE_PROFORMA.CO_DET_PRO_ART_NOM, dbo.CO_DETALLE_PROFORMA.CO_DET_PRO_CAN, dbo.CO_DETALLE_PROFORMA.CO_DET_PRO_PRE, dbo.CO_DETALLE_PROFORMA.CO_DET_PRO_DES, 
                         dbo.CO_DETALLE_PROFORMA.CO_DET_PRO_TOT, dbo.CO_PROFORMA.CO_PRO_TOT_NET, dbo.CO_PROFORMA.CO_PRO_POR_DES, dbo.CO_PROFORMA.CO_PRO_DES, dbo.CO_PROFORMA.CO_PRO_POR_IVA, 
                         dbo.CO_PROFORMA.CO_PRO_IVA, dbo.CO_PROFORMA.CO_PRO_TOT_PAG, dbo.CO_PROFORMA.CO_PRO_FOR_PAG, dbo.CO_PROFORMA.CO_PRO_TOT_LET, dbo.CO_CLIENTE.CO_CLI_CED, 
                         dbo.CO_DETALLE_PROFORMA.CO_DET_PRO_CAN_EXI, dbo.CO_PROFORMA.CO_PEDIDO_VENDEDOR
FROM            dbo.CO_VENDEDOR INNER JOIN
                         dbo.CO_PROFORMA INNER JOIN
                         dbo.CO_DETALLE_PROFORMA ON dbo.CO_PROFORMA.CO_PRO_COD = dbo.CO_DETALLE_PROFORMA.CO_PRO_COD AND dbo.CO_PROFORMA.CO_EMP_RUC = dbo.CO_DETALLE_PROFORMA.CO_EMP_RUC INNER JOIN
                         dbo.CO_ALMACEN INNER JOIN
                         dbo.CO_EMPRESA ON dbo.CO_ALMACEN.CO_EMP_RUC = dbo.CO_EMPRESA.CO_EMP_RUC ON dbo.CO_PROFORMA.CO_ALM_COD = dbo.CO_ALMACEN.CO_ALM_COD AND 
                         dbo.CO_PROFORMA.CO_EMP_RUC = dbo.CO_ALMACEN.CO_EMP_RUC ON dbo.CO_VENDEDOR.CO_EMP_RUC = dbo.CO_EMPRESA.CO_EMP_RUC AND 
                         dbo.CO_VENDEDOR.CO_VEN_CED = dbo.CO_PROFORMA.CO_VEN_CED AND dbo.CO_VENDEDOR.CO_EMP_RUC = dbo.CO_PROFORMA.CO_EMP_RUC INNER JOIN
                         dbo.CO_CLIENTE ON dbo.CO_PROFORMA.CO_CLI_COD = dbo.CO_CLIENTE.CO_CLI_COD


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
         Begin Table = "CO_TIPO_CLIENTE"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 207
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_EMPRESA"
            Begin Extent = 
               Top = 136
               Left = 298
               Bottom = 251
               Right = 477
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_CLIENTE"
            Begin Extent = 
               Top = 0
               Left = 219
               Bottom = 115
               Right = 391
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "CO_PROFORMA"
            Begin Extent = 
               Top = 0
               Left = 536
               Bottom = 115
               Right = 713
            End
            DisplayFlags = 280
            TopColumn = 26
         End
         Begin Table = "CO_DETALLE_PROFORMA"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 271
               Right = 241
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "CO_ALMACEN"
            Begin Extent = 
               Top = 120
               Left = 515
               Bottom = 220
               Right = 667
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_VENDEDOR"
            Begin Extent = 
               Top = 222
               Left = 515
               Bottom = 337
               Right = 667
           ', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_REPORTE_PROFORMA', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane2', N' End
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
      Begin ColumnWidths = 13
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
', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_REPORTE_PROFORMA', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=2
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_REPORTE_PROFORMA', NULL, NULL
GO
