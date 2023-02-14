SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE VIEW [dbo].[CO_VW_SELECT_REPORTE_PROFORMAS]
AS
SELECT     dbo.CO_EMPRESA.CO_EMP_NOM, dbo.CO_EMPRESA.CO_EMP_CIU, dbo.CO_PROFORMA.CO_PRO_COD,
                      dbo.CO_PROFORMA.CO_PRO_EST, dbo.CO_PROFORMA.CO_PRO_FEC, dbo.CO_PROFORMA.CO_VEN_CED, dbo.CO_CLIENTE.CO_CLI_COD, 
                      dbo.CO_CLIENTE.CO_CLI_NOM, dbo.CO_PROFORMA.CO_PRO_FOR_PAG, dbo.CO_DETALLE_PROFORMA.CO_DET_PRO_ART_COD, 
                      dbo.CO_DETALLE_PROFORMA.CO_DET_PRO_ART_NOM, dbo.CO_DETALLE_PROFORMA.CO_DET_PRO_CAN, 
                      dbo.CO_DETALLE_PROFORMA.CO_DET_PRO_PRE, dbo.CO_DETALLE_PROFORMA.CO_DET_PRO_DES, 
                      dbo.CO_DETALLE_PROFORMA.CO_DET_PRO_TOT, dbo.CO_PROFORMA.CO_PRO_TOT_NET, dbo.CO_CLIENTE.CO_EMP_RUC
FROM         dbo.CO_EMPRESA INNER JOIN
                      dbo.CO_PROFORMA ON dbo.CO_EMPRESA.CO_EMP_RUC = dbo.CO_PROFORMA.CO_EMP_RUC INNER JOIN
                      dbo.CO_CLIENTE ON dbo.CO_PROFORMA.CO_CLI_COD = dbo.CO_CLIENTE.CO_CLI_COD AND 
                      dbo.CO_PROFORMA.CO_EMP_RUC = dbo.CO_CLIENTE.CO_EMP_RUC INNER JOIN
                      dbo.CO_DETALLE_PROFORMA ON dbo.CO_PROFORMA.CO_PRO_COD = dbo.CO_DETALLE_PROFORMA.CO_PRO_COD AND 
                      dbo.CO_PROFORMA.CO_EMP_RUC = dbo.CO_DETALLE_PROFORMA.CO_EMP_RUC
WHERE     (dbo.CO_PROFORMA.CO_PRO_EST <> N'ANULADA')

GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[42] 4[21] 2[18] 3) )"
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
         Begin Table = "CO_EMPRESA"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 217
            End
            DisplayFlags = 280
            TopColumn = 5
         End
         Begin Table = "CO_PROFORMA"
            Begin Extent = 
               Top = 14
               Left = 302
               Bottom = 201
               Right = 479
            End
            DisplayFlags = 280
            TopColumn = 9
         End
         Begin Table = "CO_CLIENTE"
            Begin Extent = 
               Top = 6
               Left = 544
               Bottom = 121
               Right = 716
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "CO_DETALLE_PROFORMA"
            Begin Extent = 
               Top = 6
               Left = 754
               Bottom = 198
               Right = 957
            End
            DisplayFlags = 280
            TopColumn = 1
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
       ', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_REPORTE_PROFORMAS', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane2', N'  Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_REPORTE_PROFORMAS', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=2
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_REPORTE_PROFORMAS', NULL, NULL
GO
