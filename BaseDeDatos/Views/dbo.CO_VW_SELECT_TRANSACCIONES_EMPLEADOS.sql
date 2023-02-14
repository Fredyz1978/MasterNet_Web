SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[CO_VW_SELECT_TRANSACCIONES_EMPLEADOS]
AS
SELECT     dbo.CO_EMPRESA.CO_EMP_NOM, dbo.CO_EMPRESA.CO_EMP_DIR, dbo.CO_EMPRESA.CO_EMP_CIU, 
                      dbo.CO_CABECERA_ROL.CO_ROL_CAB_FEC_PAG, dbo.CO_UBICACION_AF.CO_UBI_COD, dbo.CO_UBICACION_AF.CO_UBI_NOM, 
                      dbo.PROFESOR.PROF_APE + ' ' + dbo.PROFESOR.PROF_NOM AS EMPLEADO, dbo.CO_CABECERA_ROL.CO_ROL_CAB_TIP, 
                      dbo.CO_CABECERA_ROL.CO_ROL_CAB_CHE, dbo.CO_CABECERA_ROL.CO_ROL_CAB_CUE_NUM, dbo.CO_CABECERA_ROL.CO_ROL_CAB_MES, 
                      dbo.CO_CABECERA_ROL.CO_ROL_CAB_ANO, dbo.CO_CABECERA_ROL.CO_ROL_CAB_VAL, dbo.CO_EMPRESA.CO_EMP_RUC
FROM         dbo.CO_CABECERA_ROL INNER JOIN
                      dbo.PROFESOR ON dbo.CO_CABECERA_ROL.PROF_COD = dbo.PROFESOR.PROF_COD INNER JOIN
                      dbo.CO_EMPRESA ON dbo.CO_CABECERA_ROL.CO_EMP_RUC = dbo.CO_EMPRESA.CO_EMP_RUC INNER JOIN
                      dbo.CO_UBICACION_AF ON dbo.PROFESOR.CO_EMP_RUC = dbo.CO_UBICACION_AF.CO_EMP_RUC AND 
                      dbo.PROFESOR.CO_UBI_COD = dbo.CO_UBICACION_AF.CO_UBI_COD AND dbo.CO_EMPRESA.CO_EMP_RUC = dbo.CO_UBICACION_AF.CO_EMP_RUC
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[44] 4[18] 2[12] 3) )"
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
         Begin Table = "CO_CABECERA_ROL"
            Begin Extent = 
               Top = 4
               Left = 0
               Bottom = 119
               Right = 202
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "PROFESOR"
            Begin Extent = 
               Top = 5
               Left = 242
               Bottom = 233
               Right = 428
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_EMPRESA"
            Begin Extent = 
               Top = 41
               Left = 421
               Bottom = 156
               Right = 600
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_UBICACION_AF"
            Begin Extent = 
               Top = 131
               Left = 3
               Bottom = 246
               Right = 173
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
         Width = 1785
         Width = 2040
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2610
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrd', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_TRANSACCIONES_EMPLEADOS', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane2', N'er = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_TRANSACCIONES_EMPLEADOS', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=2
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_TRANSACCIONES_EMPLEADOS', NULL, NULL
GO
