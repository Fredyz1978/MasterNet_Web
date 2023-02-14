SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[CO_VW_SELECT_REPORTE_COMPROBANTES]
AS
SELECT     dbo.CO_EMPRESA.CO_EMP_NOM, dbo.CO_COMPROBANTE.CO_COM_NUM, dbo.CO_COMPROBANTE.CO_COM_FEC, 
                      dbo.CO_TIPO_COMPROBANTE.CO_TIP_COM_NOM, dbo.CO_CUENTA.CO_CUE_COD, dbo.CO_CUENTA.CO_CUE_NOM, dbo.CO_ASIENTO.CO_ASI_DES, 
                      dbo.CO_ASIENTO.CO_ASI_DEB, dbo.CO_ASIENTO.CO_ASI_HAB, dbo.CO_ASIENTO.CO_CEN_COS_COD, dbo.CO_EMPRESA.CO_EMP_RUC, 
                      dbo.CO_TIPO_COMPROBANTE.CO_TIP_COM_COD, dbo.CO_COMPROBANTE.CO_COM_MAY, dbo.CO_COMPROBANTE.CO_COM_EST
FROM         dbo.CO_EMPRESA INNER JOIN
                      dbo.CO_CUENTA ON dbo.CO_EMPRESA.CO_EMP_RUC = dbo.CO_CUENTA.CO_EMP_RUC INNER JOIN
                      dbo.CO_TIPO_COMPROBANTE ON dbo.CO_EMPRESA.CO_EMP_RUC = dbo.CO_TIPO_COMPROBANTE.CO_EMP_RUC INNER JOIN
                      dbo.CO_COMPROBANTE ON dbo.CO_TIPO_COMPROBANTE.CO_EMP_RUC = dbo.CO_COMPROBANTE.CO_EMP_RUC AND 
                      dbo.CO_TIPO_COMPROBANTE.CO_TIP_COM_COD = dbo.CO_COMPROBANTE.CO_TIP_COM_COD INNER JOIN
                      dbo.CO_ASIENTO ON dbo.CO_CUENTA.CO_EMP_RUC = dbo.CO_ASIENTO.CO_EMP_RUC AND 
                      dbo.CO_CUENTA.CO_CUE_COD = dbo.CO_ASIENTO.CO_CUE_COD AND dbo.CO_COMPROBANTE.CO_EMP_RUC = dbo.CO_ASIENTO.CO_EMP_RUC AND
                       dbo.CO_COMPROBANTE.CO_TIP_COM_COD = dbo.CO_ASIENTO.CO_TIP_COM_COD AND 
                      dbo.CO_COMPROBANTE.CO_COM_NUM = dbo.CO_ASIENTO.CO_COM_NUM
WHERE dbo.CO_COMPROBANTE.CO_COM_EST='ACTIVO'

GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[46] 4[11] 2[14] 3) )"
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
               Top = 3
               Left = 0
               Bottom = 118
               Right = 179
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_CUENTA"
            Begin Extent = 
               Top = 0
               Left = 191
               Bottom = 115
               Right = 361
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "CO_TIPO_COMPROBANTE"
            Begin Extent = 
               Top = 6
               Left = 463
               Bottom = 139
               Right = 673
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_COMPROBANTE"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 241
               Right = 218
            End
            DisplayFlags = 280
            TopColumn = 6
         End
         Begin Table = "CO_ASIENTO"
            Begin Extent = 
               Top = 132
               Left = 257
               Bottom = 247
               Right = 432
            End
            DisplayFlags = 280
            TopColumn = 6
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 15
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1755
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 2655
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1515
         Width = 1500
         Widt', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_REPORTE_COMPROBANTES', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane2', N'h = 1500
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
', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_REPORTE_COMPROBANTES', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=2
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_REPORTE_COMPROBANTES', NULL, NULL
GO
