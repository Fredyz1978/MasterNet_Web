SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO



CREATE VIEW [dbo].[CO_VW_SELECT_REPORTE_DOCUMENTO_VENTA]
AS
SELECT dbo.CO_CLIENTE.CO_CLI_NOM, dbo.CO_CLIENTE.CO_CLI_COD, dbo.CO_CLIENTE.CO_CLI_CED, dbo.CO_CLIENTE.CO_CLI_TEL, isnull(dbo.CO_CLIENTE.CO_CLI_CIU,'')+ ' ' +dbo.CO_CLIENTE.CO_CLI_DIR as CO_CLI_DIR, dbo.CO_CLIENTE.CO_CLI_CIU, dbo.CO_CLIENTE.CO_CLI_MAI, 
             dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_FEC, dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_FOR_PAG, dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_TOT_LET, dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_TOT_NET, 
             dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_POR_DES, dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_DES, dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_POR_IVA, dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_IVA, 
             dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_TOT_PAG, dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_GUI_NUM, dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_GUI_FEC_INI, dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_GUI_FEC_TER, 
             dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_GUI_TIP, dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_GUI_NOM_TRA, dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_GUI_IDE, dbo.CO_DOCUMENTO_VENTA.CO_EMP_RUC, 
             dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_NUM, dbo.CO_DOCUMENTO_VENTA.CO_TIP_DOC_VEN_NUM, dbo.CO_DETALLE_DOCUMENTO_VENTA.CO_DET_DOC_VEN_ART_COD, dbo.CO_DETALLE_DOCUMENTO_VENTA.CO_DET_DOC_VEN_ART_NOM, 
             dbo.CO_DETALLE_DOCUMENTO_VENTA.CO_DET_DOC_VEN_CAN, dbo.CO_DETALLE_DOCUMENTO_VENTA.CO_DET_DOC_VEN_PRE, dbo.CO_DETALLE_DOCUMENTO_VENTA.CO_DET_DOC_VEN_TOT, dbo.CO_EMPRESA.CO_EMP_NOM, 
             dbo.CO_EMPRESA.CO_EMP_CIU, dbo.CO_EMPRESA.CO_EMP_DIR, dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_VAL_IVA0, dbo.CO_VENDEDOR.CO_VEN_NOM, dbo.CO_DETALLE_DOCUMENTO_VENTA.CO_DET_DOC_VEN_ART_BAR, 
             dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_OTR, dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_DET, dbo.CO_FAMILIA_ARTICULO.CO_FAM_ART_COD, dbo.CO_FAMILIA_ARTICULO.CO_FAM_ART_NOM, 
             dbo.CO_DETALLE_DOCUMENTO_VENTA.CO_CANTIDAD_EMPAQUE, dbo.CO_EMPRESA.CO_EMPRESA_LOGO, dbo.CO_EMPRESA.CO_OBLIGADO_CONTABILIDAD, dbo.CO_EMPRESA.CO_CONTRIBUYENTE_ESPECIAL, 
             dbo.CO_EMPRESA.CO_CONTRIBUYENTE_NUMERO, dbo.CO_EMPRESA.CO_EMP_RAZ_SOC, dbo.CO_DETALLE_DOCUMENTO_VENTA.CO_DET_DOC_VEN_DES, dbo.CO_DOCUMENTO_ELECTRONICO.CO_CODIGO_BARRAS_FACT_ELECTRONICA, 
             dbo.CO_DOCUMENTO_ELECTRONICO.CO_CLAVE_ACCESO_FACT_ELECTRONICA, dbo.CO_DOCUMENTO_ELECTRONICO.CO_FECHA_AUTORIZA_FACT_ELECTRONICA,
                 (SELECT CO_DOC_VEN_NUM
                 FROM    dbo.CO_DOCUMENTO_VENTA AS DV
                 WHERE (CO_DOC_VEN_ID = dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_ORIGINAL_ID)) AS CO_DOC_VEN_MOD_NUM,
                 (SELECT CO_DOC_VEN_FEC
                 FROM    dbo.CO_DOCUMENTO_VENTA AS DV
                 WHERE (CO_DOC_VEN_ID = dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_ORIGINAL_ID)) AS CO_DOC_VEN_FEC_MOD,
			dbo.CO_EMPRESA.CO_EMP_TEL
FROM   dbo.CO_DOCUMENTO_ELECTRONICO RIGHT OUTER JOIN
             dbo.CO_CLIENTE INNER JOIN
             dbo.CO_DOCUMENTO_VENTA ON dbo.CO_CLIENTE.CO_CLI_COD = dbo.CO_DOCUMENTO_VENTA.CO_CLI_COD AND dbo.CO_CLIENTE.CO_EMP_RUC = dbo.CO_DOCUMENTO_VENTA.CO_EMP_RUC 
			 --AND dbo.CO_CLIENTE.CO_TIP_CLI_COD = dbo.CO_DOCUMENTO_VENTA.CO_TIP_CLI_COD 
			 INNER JOIN
             dbo.CO_DETALLE_DOCUMENTO_VENTA ON dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_ID = dbo.CO_DETALLE_DOCUMENTO_VENTA.CO_DOC_VEN_ID INNER JOIN
             dbo.CO_EMPRESA ON dbo.CO_CLIENTE.CO_EMP_RUC = dbo.CO_EMPRESA.CO_EMP_RUC INNER JOIN
             dbo.CO_VENDEDOR ON dbo.CO_DOCUMENTO_VENTA.CO_VEN_CED = dbo.CO_VENDEDOR.CO_VEN_CED AND dbo.CO_DOCUMENTO_VENTA.CO_EMP_RUC = dbo.CO_VENDEDOR.CO_EMP_RUC AND 
             dbo.CO_EMPRESA.CO_EMP_RUC = dbo.CO_VENDEDOR.CO_EMP_RUC ON dbo.CO_DOCUMENTO_ELECTRONICO.CO_DOCUMENTO_ID = dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_ID LEFT OUTER JOIN
             dbo.CO_ARTICULO INNER JOIN
             dbo.CO_FAMILIA_ARTICULO ON dbo.CO_ARTICULO.CO_FAM_ART_COD = dbo.CO_FAMILIA_ARTICULO.CO_FAM_ART_COD ON dbo.CO_DETALLE_DOCUMENTO_VENTA.CO_DET_DOC_VEN_ART_COD = dbo.CO_ARTICULO.CO_ART_COD



GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[48] 4[24] 2[15] 3) )"
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
         Begin Table = "CO_ARTICULO"
            Begin Extent = 
               Top = 6
               Left = 674
               Bottom = 136
               Right = 867
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_FAMILIA_ARTICULO"
            Begin Extent = 
               Top = 58
               Left = 965
               Bottom = 188
               Right = 1162
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_CLIENTE"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 210
            End
            DisplayFlags = 280
            TopColumn = 17
         End
         Begin Table = "CO_DOCUMENTO_VENTA"
            Begin Extent = 
               Top = 0
               Left = 443
               Bottom = 136
               Right = 671
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_DETALLE_DOCUMENTO_VENTA"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 241
               Right = 295
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "CO_EMPRESA"
            Begin Extent = 
               Top = 145
               Left = 357
               Bottom = 260
               Right = 613
            End
            DisplayFlags = 280
            TopColumn = 16
         End
         Begin Table = "CO_VENDEDOR"
            Begin Extent = 
               Top = 246
               Left = 38
               Bottom = 376
               Right', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_REPORTE_DOCUMENTO_VENTA', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane2', N' = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_DOCUMENTO_ELECTRONICO"
            Begin Extent = 
               Top = 197
               Left = 731
               Bottom = 394
               Right = 1180
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
      Begin ColumnWidths = 43
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
         Column = 5320
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
', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_REPORTE_DOCUMENTO_VENTA', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=2
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_REPORTE_DOCUMENTO_VENTA', NULL, NULL
GO
