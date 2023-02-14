SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[CO_VW_SELECT_REPORTE_ACTIVOS_FIJOS]
AS
SELECT     dbo.CO_ACTIVO_FIJO.CO_ACT_FIJ_COD, dbo.CO_TIPO_ACTIVO.CO_CUE_COD, dbo.CO_ACTIVO_FIJO.CO_ACT_FIJ_NOM, 
                      dbo.CO_ACTIVO_FIJO.CO_ACT_FIJ_FEC_COM, dbo.CO_ACTIVO_FIJO.CO_ACT_FIJ_NUM_FAC, dbo.CO_TIPO_ACTIVO.CO_TIP_ACT_NOM, 
                      dbo.CO_UBICACION_AF.CO_UBI_NOM, dbo.CO_UBICACION_AF.CO_EMP_RUC, dbo.CO_UBICACION_AF.CO_UBI_COD, 
                      dbo.CO_TIPO_ACTIVO.CO_TIP_ACT_COD, dbo.CO_ACTIVO_FIJO.CO_ACT_FIJ_VAL_ADQ, dbo.CO_ACTIVO_FIJO.CO_ACT_FIJ_CAN, 
                      dbo.CO_ACTIVO_FIJO.CO_ACT_FIJ_NOM_PRO, dbo.CO_EMPRESA.CO_EMP_NOM, dbo.CO_ACTIVO_FIJO.CO_ACT_FIJ_EST, 
                      dbo.CO_ACTIVO_FIJO.CO_ACT_FIJ_DEP_ACU, dbo.CO_ACTIVO_FIJO.CO_ACT_FIJ_VAL_ACT
FROM         dbo.CO_ACTIVO_FIJO INNER JOIN
                      dbo.CO_UBICACION_AF ON dbo.CO_ACTIVO_FIJO.CO_EMP_RUC = dbo.CO_UBICACION_AF.CO_EMP_RUC AND 
                      dbo.CO_ACTIVO_FIJO.CO_UBI_COD = dbo.CO_UBICACION_AF.CO_UBI_COD INNER JOIN
                      dbo.CO_TIPO_ACTIVO ON dbo.CO_ACTIVO_FIJO.CO_TIP_ACT_COD = dbo.CO_TIPO_ACTIVO.CO_TIP_ACT_COD INNER JOIN
                      dbo.CO_EMPRESA ON dbo.CO_UBICACION_AF.CO_EMP_RUC = dbo.CO_EMPRESA.CO_EMP_RUC
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[42] 4[23] 2[16] 3) )"
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
         Begin Table = "CO_ACTIVO_FIJO"
            Begin Extent = 
               Top = 16
               Left = 223
               Bottom = 193
               Right = 422
            End
            DisplayFlags = 280
            TopColumn = 12
         End
         Begin Table = "CO_UBICACION_AF"
            Begin Extent = 
               Top = 22
               Left = 0
               Bottom = 137
               Right = 167
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_TIPO_ACTIVO"
            Begin Extent = 
               Top = 77
               Left = 418
               Bottom = 192
               Right = 610
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_EMPRESA"
            Begin Extent = 
               Top = 143
               Left = 49
               Bottom = 258
               Right = 228
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
      Begin ColumnWidths = 18
         Width = 284
         Width = 1500
         Width = 1500
         Width = 2700
         Width = 1500
         Width = 2055
         Width = 1830
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 2250
         Width = 1500
         Width = 1500
         Width = 1950
         Width = 1875
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Outpu', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_REPORTE_ACTIVOS_FIJOS', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane2', N't = 720
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
', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_REPORTE_ACTIVOS_FIJOS', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=2
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_REPORTE_ACTIVOS_FIJOS', NULL, NULL
GO
