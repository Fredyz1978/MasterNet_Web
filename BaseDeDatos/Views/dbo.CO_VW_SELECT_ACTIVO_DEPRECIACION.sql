SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[CO_VW_SELECT_ACTIVO_DEPRECIACION]
AS
SELECT     dbo.CO_ACTIVO_FIJO.CO_EMP_RUC, dbo.CO_ACTIVO_FIJO.CO_ACT_FIJ_COD, dbo.CO_TIPO_ACTIVO.CO_TIP_ACT_POR, 
                      dbo.CO_ACTIVO_FIJO.CO_ACT_FIJ_VAL_ACT, dbo.CO_TIPO_ACTIVO.CO_CUE_COD, dbo.CO_TIPO_ACTIVO.CO_CUE_COD_DEP, 
                      dbo.CO_TIPO_ACTIVO.CO_TIP_ACT_COD, dbo.CO_ACTIVO_FIJO.CO_ACT_FIJ_FEC_INI, dbo.CO_ACTIVO_FIJO.CO_ACT_FIJ_FEC_FIN, 
                      dbo.CO_ACTIVO_FIJO.CO_ACT_FIJ_CAN, dbo.CO_TIPO_ACTIVO.CO_TIP_ACT_TIE
FROM         dbo.CO_ACTIVO_FIJO INNER JOIN
                      dbo.CO_TIPO_ACTIVO ON dbo.CO_ACTIVO_FIJO.CO_TIP_ACT_COD = dbo.CO_TIPO_ACTIVO.CO_TIP_ACT_COD
WHERE     (dbo.CO_ACTIVO_FIJO.CO_ACT_FIJ_EST = 1) AND (dbo.CO_ACTIVO_FIJO.CO_ACT_FIJ_DEP = 1)
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[14] 3) )"
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
               Top = 12
               Left = 16
               Bottom = 158
               Right = 215
            End
            DisplayFlags = 280
            TopColumn = 17
         End
         Begin Table = "CO_TIPO_ACTIVO"
            Begin Extent = 
               Top = 57
               Left = 328
               Bottom = 193
               Right = 520
            End
            DisplayFlags = 280
            TopColumn = 3
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 12
         Width = 284
         Width = 1500
         Width = 1545
         Width = 1845
         Width = 1875
         Width = 1500
         Width = 1605
         Width = 1560
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2205
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
', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_ACTIVO_DEPRECIACION', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_ACTIVO_DEPRECIACION', NULL, NULL
GO
