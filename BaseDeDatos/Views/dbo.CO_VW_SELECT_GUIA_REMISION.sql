SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[CO_VW_SELECT_GUIA_REMISION]
AS
SELECT        dbo.CO_GUIA_REMISION.CO_DOC_VEN_GUI_COD, dbo.CO_GUIA_REMISION.CO_DOC_VEN_GUI_NUM, dbo.CO_GUIA_REMISION.CO_DOC_VEN_GUI_FEC_INI, dbo.CO_GUIA_REMISION.CO_DOC_VEN_GUI_FEC_TER, 
                         dbo.CO_GUIA_REMISION.CO_DOC_VEN_GUI_TIP, dbo.CO_GUIA_REMISION.CO_DOC_VEN_GUI_NOM_TRA, dbo.CO_GUIA_REMISION.CO_DOC_VEN_GUI_IDE, dbo.CO_GUIA_REMISION.CO_DOC_VEN_GUI_PLACA, 
                         dbo.CO_GUIA_REMISION.CO_ESTADO, dbo.CO_EMPRESA.CO_EMP_NOM, dbo.CO_EMPRESA.CO_EMP_NOM_CON, dbo.CO_EMPRESA.CO_EMP_REG_CON, dbo.CO_EMPRESA.CO_EMP_DIR, 
                         dbo.CO_EMPRESA.CO_EMP_RAZ_SOC, dbo.CO_EMPRESA.CO_CONTRIBUYENTE_ESPECIAL, dbo.CO_EMPRESA.CO_CONTRIBUYENTE_NUMERO, dbo.CO_EMPRESA.CO_OBLIGADO_CONTABILIDAD, 
                         dbo.CO_EMPRESA.CO_EMP_RUC, dbo.CO_CLIENTE.CO_CLI_CED, dbo.CO_CLIENTE.CO_CLI_NOM, dbo.CO_CLIENTE.CO_CLI_DIR, CO_DOCUMENTO_ELECTRONICO_1.CO_CLAVE_ACCESO_FACT_ELECTRONICA, 
                         dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_NUM, dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_FEC,
                             (SELECT        TOP (1) CO_CLAVE_ACCESO_FACT_ELECTRONICA
                               FROM            dbo.CO_DOCUMENTO_ELECTRONICO
                               WHERE        (CO_DOCUMENTO_ID = dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_ID)) AS CO_DOC_VEN_AUTORIZACION, dbo.CO_GUIA_REMISION.CO_DOC_VEN_GUI_DES, dbo.CO_CLIENTE.CO_CLI_TEL, 
                         dbo.CO_CLIENTE.CO_CLI_MAI
FROM            dbo.CO_GUIA_REMISION INNER JOIN
                         dbo.CO_EMPRESA ON dbo.CO_GUIA_REMISION.CO_EMP_RUC = dbo.CO_EMPRESA.CO_EMP_RUC INNER JOIN
                         dbo.CO_DOCUMENTO_VENTA ON dbo.CO_GUIA_REMISION.CO_DOC_VEN_ID = dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_ID AND 
                         dbo.CO_GUIA_REMISION.CO_DOC_VEN_ID = dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_ID INNER JOIN
                         dbo.CO_CLIENTE ON dbo.CO_DOCUMENTO_VENTA.CO_CLI_COD = dbo.CO_CLIENTE.CO_CLI_COD AND dbo.CO_DOCUMENTO_VENTA.CO_TIP_CLI_COD = dbo.CO_CLIENTE.CO_TIP_CLI_COD AND 
                         dbo.CO_DOCUMENTO_VENTA.CO_EMP_RUC = dbo.CO_CLIENTE.CO_EMP_RUC LEFT OUTER JOIN
                         dbo.CO_DOCUMENTO_ELECTRONICO AS CO_DOCUMENTO_ELECTRONICO_1 ON dbo.CO_GUIA_REMISION.CO_DOC_VEN_GUI_COD = CO_DOCUMENTO_ELECTRONICO_1.CO_DOCUMENTO_ID

GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[48] 4[14] 2[15] 3) )"
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
         Begin Table = "CO_GUIA_REMISION"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 286
            End
            DisplayFlags = 280
            TopColumn = 6
         End
         Begin Table = "CO_EMPRESA"
            Begin Extent = 
               Top = 0
               Left = 434
               Bottom = 130
               Right = 693
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_DOCUMENTO_VENTA"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 291
            End
            DisplayFlags = 280
            TopColumn = 6
         End
         Begin Table = "CO_CLIENTE"
            Begin Extent = 
               Top = 125
               Left = 715
               Bottom = 255
               Right = 901
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_DOCUMENTO_ELECTRONICO_1"
            Begin Extent = 
               Top = 270
               Left = 38
               Bottom = 400
               Right = 364
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
      Begin ColumnWidths = 25
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
         Width =', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_GUIA_REMISION', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane2', N' 1500
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
', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_GUIA_REMISION', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=2
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_GUIA_REMISION', NULL, NULL
GO
