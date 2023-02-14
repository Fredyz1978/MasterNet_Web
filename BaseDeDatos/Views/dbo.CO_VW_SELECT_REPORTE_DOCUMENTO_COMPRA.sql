SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE VIEW [dbo].[CO_VW_SELECT_REPORTE_DOCUMENTO_COMPRA]
AS
SELECT     dbo.CO_EMPRESA.CO_EMP_NOM, dbo.CO_EMPRESA.CO_EMP_CIU, dbo.CO_PROVEEDOR.CO_PRO_NOM, 
                      dbo.CO_TIPO_IDENTIFICACION.CO_TIP_IDE_NOM as CO_TIP_IDE_PRO_NOM, dbo.CO_PROVEEDOR.CO_PRO_CED, dbo.CO_PROVEEDOR.CO_PRO_DIR, 
                      dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_ETA, dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_PUN_EMI, 
                      dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_SEC, dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_FEC_EMI, 
                      dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_FEC_REG, dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_TOT_NET, 
                      dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_POR_DES, dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_DES, 
                      dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_POR_IVA, dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_IVA, 
                      dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_TOT_PAG, dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_TOT_LET, 
                      dbo.CO_DETALLE_DOCUMENTO_COMPRA.CO_DET_DOC_COM_ART_COD, dbo.CO_DETALLE_DOCUMENTO_COMPRA.CO_DET_DOC_COM_ART_NOM, 
                      dbo.CO_DETALLE_DOCUMENTO_COMPRA.CO_DET_DOC_COM_CAN, dbo.CO_DETALLE_DOCUMENTO_COMPRA.CO_DET_DOC_COM_PRE, 
                      dbo.CO_DETALLE_DOCUMENTO_COMPRA.CO_DET_DOC_COM_DES, dbo.CO_DETALLE_DOCUMENTO_COMPRA.CO_DET_DOC_COM_TOT, 
                      dbo.CO_EMPRESA.CO_EMP_RUC, dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_NUM, dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_DET, 
                      ISNULL(dbo.CO_DETALLE_DOCUMENTO_COMPRA.CO_BOD_NOM,'') AS CO_EMP_DIR
FROM         dbo.CO_EMPRESA INNER JOIN
                      dbo.CO_PROVEEDOR ON dbo.CO_EMPRESA.CO_EMP_RUC = dbo.CO_PROVEEDOR.CO_EMP_RUC INNER JOIN
                      dbo.CO_DOCUMENTO_COMPRA ON dbo.CO_PROVEEDOR.CO_PRO_COD = dbo.CO_DOCUMENTO_COMPRA.CO_PRO_COD INNER JOIN
                      dbo.CO_DETALLE_DOCUMENTO_COMPRA ON 
                      dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_ID = dbo.CO_DETALLE_DOCUMENTO_COMPRA.CO_DOC_COM_ID INNER JOIN
                      dbo.CO_TIPO_IDENTIFICACION ON dbo.CO_PROVEEDOR.CO_TIP_IDE_COD = dbo.CO_TIPO_IDENTIFICACION.CO_TIP_IDE_COD

GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[45] 4[18] 2[13] 3) )"
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
            TopColumn = 10
         End
         Begin Table = "CO_PROVEEDOR"
            Begin Extent = 
               Top = 0
               Left = 486
               Bottom = 176
               Right = 682
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_DOCUMENTO_COMPRA"
            Begin Extent = 
               Top = 124
               Left = 34
               Bottom = 239
               Right = 267
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_DETALLE_DOCUMENTO_COMPRA"
            Begin Extent = 
               Top = 2
               Left = 266
               Bottom = 117
               Right = 499
            End
            DisplayFlags = 280
            TopColumn = 14
         End
         Begin Table = "CO_TIPO_IDENTIFICACION_PROVEEDOR"
            Begin Extent = 
               Top = 18
               Left = 738
               Bottom = 103
               Right = 935
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
      Begin ColumnWidths = 30
         Width = 284
         Width = 1500
         Width = 1620
         Width = 1500
         Width = 1500
         Width = 3090
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 15', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_REPORTE_DOCUMENTO_COMPRA', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane2', N'00
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 3930
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
         Column = 4920
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
', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_REPORTE_DOCUMENTO_COMPRA', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=2
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_REPORTE_DOCUMENTO_COMPRA', NULL, NULL
GO
