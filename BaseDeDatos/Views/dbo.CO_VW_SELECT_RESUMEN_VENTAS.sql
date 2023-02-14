SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


-- View

CREATE VIEW [dbo].[CO_VW_SELECT_RESUMEN_VENTAS]
AS
SELECT        dbo.CO_EMPRESA.CO_EMP_NOM, dbo.CO_EMPRESA.CO_EMP_CIU, dbo.CO_DOCUMENTO_VENTA.CO_TIP_DOC_VEN_NUM, dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_NUM, dbo.CO_DOCUMENTO_VENTA.CO_VEN_CED, 
                         dbo.CO_CLIENTE.CO_CLI_NOM, dbo.CO_CLIENTE.CO_CLI_COD, dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_TOT_NET, dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_DES, dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_IVA, 
                         dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_TOT_PAG, dbo.CO_CLIENTE.CO_EMP_RUC, dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_FEC, dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_EST
FROM            dbo.CO_DOCUMENTO_VENTA INNER JOIN
                         dbo.CO_CLIENTE ON dbo.CO_DOCUMENTO_VENTA.CO_CLI_COD = dbo.CO_CLIENTE.CO_CLI_COD AND dbo.CO_DOCUMENTO_VENTA.CO_EMP_RUC = dbo.CO_CLIENTE.CO_EMP_RUC INNER JOIN
                         dbo.CO_EMPRESA ON dbo.CO_CLIENTE.CO_EMP_RUC = dbo.CO_EMPRESA.CO_EMP_RUC
WHERE        (dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_EST = N'ACTIVA') OR
                         (dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_EST = N'PROCESADO')
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[42] 4[21] 2[12] 3) )"
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
         Begin Table = "CO_DOCUMENTO_VENTA"
            Begin Extent = 
               Top = 21
               Left = 247
               Bottom = 200
               Right = 475
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_CLIENTE"
            Begin Extent = 
               Top = 37
               Left = 0
               Bottom = 152
               Right = 172
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "CO_EMPRESA"
            Begin Extent = 
               Top = 31
               Left = 615
               Bottom = 191
               Right = 794
            End
            DisplayFlags = 280
            TopColumn = 4
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
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1860
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2625
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
', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_RESUMEN_VENTAS', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_RESUMEN_VENTAS', NULL, NULL
GO
