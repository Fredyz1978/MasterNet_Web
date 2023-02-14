SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO




CREATE VIEW [dbo].[CO_VW_SELECT_LISTADO_FACTURAS]
AS
SELECT     dbo.CO_EMPRESA.CO_EMP_NOM, DV.CO_DOC_VEN_NUM, DV.CO_VEN_CED, 
                      DV.CO_DOC_VEN_FEC, dbo.CO_CLIENTE.CO_CLI_NOM, dbo.CO_CLIENTE.CO_CLI_COD, 
                      DV.CO_DOC_VEN_TOT_NET, DV.CO_DOC_VEN_DES, DV.CO_DOC_VEN_IVA, 
                      DV.CO_DOC_VEN_TOT_PAG, dbo.CO_CLIENTE.CO_TIP_CLI_COD, DV.CO_TIP_DOC_VEN_NUM, 
                      DV.CO_EMP_RUC, DV.CO_DOC_VEN_EST, DV.CO_DOC_VEN_FOR_PAG, 
                      dbo.CO_EMPRESA.CO_EMP_CIU,
			CAST(ISNULL((SELECT top 1 CO_DOC_VEN_TOT_NET-CO_DOC_VEN_DES FROM CO_DOCUMENTO_VENTA WHERE CO_DOC_VEN_ORIGINAL_ID=DV.CO_DOC_VEN_ID),0) AS float) AS CO_VALOR_NOTA_CREDITO
FROM         dbo.CO_DOCUMENTO_VENTA AS DV INNER JOIN
                      dbo.CO_EMPRESA ON DV.CO_EMP_RUC = dbo.CO_EMPRESA.CO_EMP_RUC INNER JOIN
                      dbo.CO_CLIENTE ON DV.CO_CLI_COD = dbo.CO_CLIENTE.CO_CLI_COD AND 
                      DV.CO_EMP_RUC = dbo.CO_CLIENTE.CO_EMP_RUC 
					  --AND DV.CO_TIP_CLI_COD = dbo.CO_CLIENTE.CO_TIP_CLI_COD 
					  --INNER JOIN dbo.CO_BODEGA ON dbo.CO_DOCUMENTO_VENTA.CO_BOD_COD = dbo.CO_BODEGA.CO_BOD_COD




GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[42] 4[20] 2[20] 3) )"
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
               Top = 79
               Left = 404
               Bottom = 194
               Right = 632
            End
            DisplayFlags = 280
            TopColumn = 14
         End
         Begin Table = "CO_EMPRESA"
            Begin Extent = 
               Top = 46
               Left = 123
               Bottom = 161
               Right = 302
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "CO_CLIENTE"
            Begin Extent = 
               Top = 42
               Left = 802
               Bottom = 157
               Right = 974
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_BODEGA"
            Begin Extent = 
               Top = 0
               Left = 399
               Bottom = 119
               Right = 559
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
      Begin ColumnWidths = 18
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
         Column = 3060
         Alias = 900
         Table = 1170
         Output = 7', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_LISTADO_FACTURAS', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane2', N'20
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
', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_LISTADO_FACTURAS', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=2
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_LISTADO_FACTURAS', NULL, NULL
GO
