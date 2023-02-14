SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[CO_VW_SELECT_TIPO_RUBROS]
AS
SELECT     TOP (100) PERCENT dbo.CO_TIPO_RUBRO.CO_TIP_RUB_NOM, dbo.CO_TIPO_RUBRO.CO_TIP_RUB_COD_CUE, 
                      dbo.CO_RUBROS_ROL.CO_RUB_ROL_AFE, SUM(dbo.CO_TRANSACCION.CO_TRA_VAL) AS Valor, dbo.CO_TRANSACCION.CO_TRA_MES AS Mes, 
                      dbo.CO_TRANSACCION.CO_TRA_ANO AS Anio, dbo.CO_TRANSACCION.CO_EMP_RUC
FROM         dbo.CO_RUBROS_ROL INNER JOIN
                      dbo.CO_TRANSACCION ON dbo.CO_RUBROS_ROL.CO_RUB_ROL_COD = dbo.CO_TRANSACCION.CO_RUB_ROL_COD AND 
                      dbo.CO_RUBROS_ROL.CO_EMP_RUC = dbo.CO_TRANSACCION.CO_EMP_RUC INNER JOIN
                      dbo.CO_TIPO_RUBRO ON dbo.CO_RUBROS_ROL.CO_TIP_RUB_COD = dbo.CO_TIPO_RUBRO.CO_TIP_RUB_COD
GROUP BY dbo.CO_RUBROS_ROL.CO_RUB_ROL_AFE, dbo.CO_TIPO_RUBRO.CO_TIP_RUB_NOM, dbo.CO_TIPO_RUBRO.CO_TIP_RUB_COD_CUE, 
                      dbo.CO_TRANSACCION.CO_TRA_MES, dbo.CO_TRANSACCION.CO_TRA_ANO, dbo.CO_TRANSACCION.CO_EMP_RUC, 
                      dbo.CO_RUBROS_ROL.CO_RUB_ROL_VAL
HAVING      (dbo.CO_RUBROS_ROL.CO_RUB_ROL_VAL = N'Ingresos') OR
                      (dbo.CO_RUBROS_ROL.CO_RUB_ROL_VAL = N'Descuentos')
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[43] 4[20] 2[14] 3) )"
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
         Begin Table = "CO_RUBROS_ROL"
            Begin Extent = 
               Top = 41
               Left = 310
               Bottom = 156
               Right = 530
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "CO_TRANSACCION"
            Begin Extent = 
               Top = 30
               Left = 610
               Bottom = 202
               Right = 786
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_TIPO_RUBRO"
            Begin Extent = 
               Top = 30
               Left = 71
               Bottom = 155
               Right = 269
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
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 2130
         Width = 1995
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 4650
         Alias = 900
         Table = 2220
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
', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_TIPO_RUBROS', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_TIPO_RUBROS', NULL, NULL
GO
