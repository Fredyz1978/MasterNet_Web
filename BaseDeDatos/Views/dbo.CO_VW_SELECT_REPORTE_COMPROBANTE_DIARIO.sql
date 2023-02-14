SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[CO_VW_SELECT_REPORTE_COMPROBANTE_DIARIO]
AS
SELECT     TOP (100) PERCENT dbo.CO_EMPRESA.CO_EMP_NOM, dbo.CO_EMPRESA.CO_EMP_DIR, dbo.CO_EMPRESA.CO_EMP_RUC, 
                      dbo.CO_TIPO_COMPROBANTE.CO_TIP_COM_NOM, dbo.CO_COMPROBANTE.CO_COM_NUM, dbo.CO_COMPROBANTE.CO_COM_FEC, 
                      dbo.CO_COMPROBANTE.CO_COM_NOM_EMP, dbo.CO_COMPROBANTE.CO_COM_CONC, dbo.CO_COMPROBANTE.CO_COM_USU_ALI, 
                      dbo.CO_ASIENTO.CO_CUE_COD, dbo.CO_ASIENTO.CO_ASI_DES, dbo.CO_ASIENTO.CO_ASI_DEB, dbo.CO_ASIENTO.CO_ASI_HAB, 
                      dbo.CO_ASIENTO.CO_CEN_COS_COD, dbo.CO_ASIENTO.CO_TIP_COM_COD, dbo.CO_ASIENTO.CO_ASI_COD, dbo.CO_COMPROBANTE.CO_COM_VAL_LET, 
                      dbo.CO_COMPROBANTE.CO_COM_NUM_CHE, dbo.CO_CUENTA.CO_CUE_NOM
FROM         dbo.CO_COMPROBANTE INNER JOIN
                      dbo.CO_ASIENTO ON dbo.CO_COMPROBANTE.CO_EMP_RUC = dbo.CO_ASIENTO.CO_EMP_RUC AND 
                      dbo.CO_COMPROBANTE.CO_TIP_COM_COD = dbo.CO_ASIENTO.CO_TIP_COM_COD AND 
                      dbo.CO_COMPROBANTE.CO_COM_NUM = dbo.CO_ASIENTO.CO_COM_NUM INNER JOIN
                      dbo.CO_TIPO_COMPROBANTE ON dbo.CO_COMPROBANTE.CO_EMP_RUC = dbo.CO_TIPO_COMPROBANTE.CO_EMP_RUC AND 
                      dbo.CO_COMPROBANTE.CO_TIP_COM_COD = dbo.CO_TIPO_COMPROBANTE.CO_TIP_COM_COD INNER JOIN
                      dbo.CO_EMPRESA ON dbo.CO_TIPO_COMPROBANTE.CO_EMP_RUC = dbo.CO_EMPRESA.CO_EMP_RUC INNER JOIN
                      dbo.CO_CUENTA ON dbo.CO_ASIENTO.CO_CUE_COD = dbo.CO_CUENTA.CO_CUE_COD
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[47] 4[13] 2[18] 3) )"
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
         Begin Table = "CO_COMPROBANTE"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 218
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_ASIENTO"
            Begin Extent = 
               Top = 6
               Left = 256
               Bottom = 137
               Right = 433
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_TIPO_COMPROBANTE"
            Begin Extent = 
               Top = 144
               Left = 258
               Bottom = 259
               Right = 434
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_EMPRESA"
            Begin Extent = 
               Top = 6
               Left = 471
               Bottom = 121
               Right = 650
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
      Begin ColumnWidths = 17
         Width = 284
         Width = 1500
         Width = 1170
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
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1725
         Alias = 900
         Table = 1170
         Output = 720
         Append ', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_REPORTE_COMPROBANTE_DIARIO', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane2', N'= 1400
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
', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_REPORTE_COMPROBANTE_DIARIO', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=2
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_REPORTE_COMPROBANTE_DIARIO', NULL, NULL
GO
