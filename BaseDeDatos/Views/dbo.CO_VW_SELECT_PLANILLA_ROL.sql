SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[CO_VW_SELECT_PLANILLA_ROL]
AS
SELECT     dbo.PROFESOR.PROF_APE + ' ' + dbo.PROFESOR.PROF_NOM AS EMPLEADO, dbo.CO_CARGO.CO_CAR_NOM, 
                      dbo.CO_RUBROS_ROL.CO_RUB_ROL_NOM, dbo.PROFESOR.PROF_SUE, dbo.CO_UBICACION_AF.CO_UBI_NOM, 
                      dbo.CO_TRANSACCION.CO_TRA_VAL, dbo.PROFESOR.PROF_COD, dbo.CO_EMPRESA.CO_EMP_NOM, dbo.CO_EMPRESA.CO_EMP_DIR, 
                      dbo.CO_EMPRESA.CO_EMP_CIU, dbo.CO_TRANSACCION.CO_TRA_MES AS MES, dbo.CO_TRANSACCION.CO_TRA_ANO AS ANIO, 
                      dbo.CO_UBICACION_AF.CO_UBI_COD, dbo.CO_EMPRESA.CO_EMP_RUC, dbo.CO_RUBROS_ROL.CO_RUB_ROL_VAL, 
                      dbo.CO_CORRECION_HORARIO.CO_COR_HOR_EXT AS HORAS_EXTRAS, 
                      dbo.CO_CORRECION_HORARIO.CO_COR_HOR_SUP AS HORAS_SUPLEMENTARIAS
FROM         dbo.PROFESOR INNER JOIN
                      dbo.CO_TRANSACCION ON dbo.PROFESOR.PROF_COD = dbo.CO_TRANSACCION.PROF_COD INNER JOIN
                      dbo.CO_RUBROS_ROL ON dbo.CO_TRANSACCION.CO_RUB_ROL_COD = dbo.CO_RUBROS_ROL.CO_RUB_ROL_COD AND 
                      dbo.CO_TRANSACCION.CO_EMP_RUC = dbo.CO_RUBROS_ROL.CO_EMP_RUC INNER JOIN
                      dbo.CO_CARGO ON dbo.PROFESOR.CO_CAR_COD = dbo.CO_CARGO.CO_CAR_COD INNER JOIN
                      dbo.CO_UBICACION_AF ON dbo.PROFESOR.CO_EMP_RUC = dbo.CO_UBICACION_AF.CO_EMP_RUC AND 
                      dbo.PROFESOR.CO_UBI_COD = dbo.CO_UBICACION_AF.CO_UBI_COD INNER JOIN
                      dbo.CO_EMPRESA ON dbo.CO_RUBROS_ROL.CO_EMP_RUC = dbo.CO_EMPRESA.CO_EMP_RUC AND 
                      dbo.CO_CARGO.CO_EMP_RUC = dbo.CO_EMPRESA.CO_EMP_RUC AND 
                      dbo.CO_UBICACION_AF.CO_EMP_RUC = dbo.CO_EMPRESA.CO_EMP_RUC INNER JOIN
                      dbo.CO_CORRECION_HORARIO ON dbo.CO_EMPRESA.CO_EMP_RUC = dbo.CO_CORRECION_HORARIO.CO_EMP_RUC AND 
                      dbo.PROFESOR.PROF_COD = dbo.CO_CORRECION_HORARIO.PROF_COD AND 
                      dbo.CO_TRANSACCION.CO_TRA_MES = dbo.CO_CORRECION_HORARIO.CO_COR_HOR_MES AND 
                      dbo.CO_TRANSACCION.CO_TRA_ANO = dbo.CO_CORRECION_HORARIO.CO_COR_HOR_ANO
GROUP BY dbo.PROFESOR.PROF_APE + ' ' + dbo.PROFESOR.PROF_NOM, dbo.CO_CARGO.CO_CAR_NOM, dbo.CO_RUBROS_ROL.CO_RUB_ROL_NOM, 
                      dbo.PROFESOR.PROF_SUE, dbo.CO_UBICACION_AF.CO_UBI_NOM, dbo.CO_TRANSACCION.CO_TRA_VAL, dbo.PROFESOR.PROF_COD, 
                      dbo.CO_EMPRESA.CO_EMP_NOM, dbo.CO_EMPRESA.CO_EMP_DIR, dbo.CO_EMPRESA.CO_EMP_CIU, dbo.CO_TRANSACCION.CO_TRA_MES, 
                      dbo.CO_TRANSACCION.CO_TRA_ANO, dbo.CO_UBICACION_AF.CO_UBI_COD, dbo.CO_EMPRESA.CO_EMP_RUC, 
                      dbo.CO_RUBROS_ROL.CO_RUB_ROL_VAL, dbo.CO_CORRECION_HORARIO.CO_COR_HOR_EXT, dbo.CO_CORRECION_HORARIO.CO_COR_HOR_SUP
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[50] 4[16] 2[14] 3) )"
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
               Top = 4
               Left = 30
               Bottom = 119
               Right = 216
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_TRANSACCION"
            Begin Extent = 
               Top = 0
               Left = 243
               Bottom = 115
               Right = 449
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "CO_RUBROS_ROL"
            Begin Extent = 
               Top = 12
               Left = 524
               Bottom = 165
               Right = 723
            End
            DisplayFlags = 280
            TopColumn = 5
         End
         Begin Table = "CO_CARGO"
            Begin Extent = 
               Top = 16
               Left = 728
               Bottom = 131
               Right = 880
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_UBICACION_AF"
            Begin Extent = 
               Top = 133
               Left = 34
               Bottom = 248
               Right = 204
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_EMPRESA"
            Begin Extent = 
               Top = 142
               Left = 233
               Bottom = 257
               Right = 428
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_CORRECION_HORARIO"
            Begin Extent = 
               Top = 122
               Left = 527
               Bottom = 288
               Right = 723
          ', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_PLANILLA_ROL', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane2', N'  End
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
      Begin ColumnWidths = 18
         Width = 284
         Width = 2370
         Width = 1500
         Width = 1800
         Width = 2130
         Width = 2145
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
      Begin ColumnWidths = 12
         Column = 2460
         Alias = 2295
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
', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_PLANILLA_ROL', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=2
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_PLANILLA_ROL', NULL, NULL
GO
