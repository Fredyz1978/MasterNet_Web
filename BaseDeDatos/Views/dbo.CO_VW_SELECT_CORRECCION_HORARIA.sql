SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[CO_VW_SELECT_CORRECCION_HORARIA]
AS
SELECT     dbo.PROFESOR.PROF_COD, dbo.PROFESOR.PROF_APE + ' ' + dbo.PROFESOR.PROF_NOM AS EMPLEADO, 
                      dbo.CO_CORRECION_HORARIO.CO_COR_HOR_LAB AS Horas_Laboradas, dbo.CO_CORRECION_HORARIO.CO_COR_HOR_EXT AS Horas_Extras, 
                      dbo.CO_CORRECION_HORARIO.CO_COR_HOR_SUP AS Horas_Suplementarias, dbo.CO_CORRECION_HORARIO.CO_COR_HOR_MES AS MES, 
                      dbo.CO_CORRECION_HORARIO.CO_COR_HOR_ANO AS ANIO, dbo.PROFESOR.CO_EMP_RUC, dbo.PROFESOR.CO_UBI_COD
FROM         dbo.PROFESOR INNER JOIN
                      dbo.CO_CORRECION_HORARIO ON dbo.PROFESOR.PROF_COD = dbo.CO_CORRECION_HORARIO.PROF_COD
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[42] 4[21] 2[11] 3) )"
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
         Begin Table = "PROFESOR"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 33
         End
         Begin Table = "CO_CORRECION_HORARIO"
            Begin Extent = 
               Top = 6
               Left = 262
               Bottom = 171
               Right = 487
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
         Column = 4755
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
', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_CORRECCION_HORARIA', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_CORRECCION_HORARIA', NULL, NULL
GO
