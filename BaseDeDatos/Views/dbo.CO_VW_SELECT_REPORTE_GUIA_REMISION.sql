SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO



CREATE VIEW [dbo].[CO_VW_SELECT_REPORTE_GUIA_REMISION]
AS
SELECT        dbo.CO_CLIENTE.CO_CLI_NOM, dbo.CO_CLIENTE.CO_CLI_COD, dbo.CO_CLIENTE.CO_CLI_CED, dbo.CO_CLIENTE.CO_CLI_TEL, dbo.CO_CLIENTE.CO_CLI_DIR, dbo.CO_CLIENTE.CO_CLI_CIU, dbo.CO_CLIENTE.CO_CLI_MAI, 
                         dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_FEC, dbo.CO_DOCUMENTO_VENTA.CO_EMP_RUC, dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_NUM, dbo.CO_DOCUMENTO_VENTA.CO_TIP_DOC_VEN_NUM, 
                         dbo.CO_EMPRESA.CO_EMP_NOM, dbo.CO_EMPRESA.CO_EMP_CIU, dbo.CO_EMPRESA.CO_EMP_DIR, dbo.CO_EMPRESA.CO_EMPRESA_LOGO, dbo.CO_EMPRESA.CO_OBLIGADO_CONTABILIDAD, 
                         dbo.CO_EMPRESA.CO_CONTRIBUYENTE_ESPECIAL, dbo.CO_EMPRESA.CO_CONTRIBUYENTE_NUMERO, dbo.CO_EMPRESA.CO_EMP_RAZ_SOC, 
                         CO_DOCUMENTO_ELECTRONICO_1.CO_CODIGO_BARRAS_FACT_ELECTRONICA, CO_DOCUMENTO_ELECTRONICO_1.CO_CLAVE_ACCESO_FACT_ELECTRONICA, 
                         CO_DOCUMENTO_ELECTRONICO_1.CO_FECHA_AUTORIZA_FACT_ELECTRONICA,
                             (SELECT        CO_CLAVE_ACCESO_FACT_ELECTRONICA
                               FROM            dbo.CO_DOCUMENTO_ELECTRONICO
                               WHERE        (CO_DOCUMENTO_ID = dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_ID)) AS CO_DOC_VEN_AUTORIZACION, dbo.CO_GUIA_REMISION.CO_DOC_VEN_GUI_PLACA, 
                         dbo.CO_GUIA_REMISION.CO_DOC_VEN_GUI_FEC_REG, dbo.CO_DETALLE_GUIA_REMISION.CO_DET_GUI_REM_CAN, dbo.CO_DETALLE_GUIA_REMISION.CO_DET_GUI_REM_DES, 
                         dbo.CO_GUIA_REMISION.CO_DOC_VEN_GUI_COD, dbo.CO_GUIA_REMISION.CO_DOC_VEN_GUI_NUM, dbo.CO_GUIA_REMISION.CO_DOC_VEN_GUI_FEC_INI, dbo.CO_GUIA_REMISION.CO_DOC_VEN_GUI_FEC_TER, 
                         dbo.CO_GUIA_REMISION.CO_DOC_VEN_GUI_DES, dbo.CO_GUIA_REMISION.CO_DOC_VEN_GUI_TIP, dbo.CO_GUIA_REMISION.CO_DOC_VEN_GUI_NOM_TRA, dbo.CO_GUIA_REMISION.CO_DOC_VEN_GUI_IDE, 
                         dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_ID, CO_DOCUMENTO_ELECTRONICO_1.CO_ESTADO_FACTURA_ELECTRONICA, CO_DOCUMENTO_ELECTRONICO_1.CO_RIDE_FACTURA_ELECTRONICA, 
                         CO_DOCUMENTO_ELECTRONICO_1.CO_XML_FACTURA_ELECTRONICA, CO_DOCUMENTO_ELECTRONICO_1.CO_DOCUMENTO_ELECTRONICO_ID
FROM            dbo.CO_GUIA_REMISION INNER JOIN
                         dbo.CO_CLIENTE INNER JOIN
                         dbo.CO_DOCUMENTO_VENTA ON dbo.CO_CLIENTE.CO_CLI_COD = dbo.CO_DOCUMENTO_VENTA.CO_CLI_COD 
						 AND dbo.CO_CLIENTE.CO_EMP_RUC = dbo.CO_DOCUMENTO_VENTA.CO_EMP_RUC 
						 --AND dbo.CO_CLIENTE.CO_TIP_CLI_COD = dbo.CO_DOCUMENTO_VENTA.CO_TIP_CLI_COD 
						 INNER JOIN
                         dbo.CO_EMPRESA ON dbo.CO_CLIENTE.CO_EMP_RUC = dbo.CO_EMPRESA.CO_EMP_RUC ON dbo.CO_GUIA_REMISION.CO_DOC_VEN_ID = dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_ID AND 
                         dbo.CO_GUIA_REMISION.CO_DOC_VEN_ID = dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_ID AND dbo.CO_GUIA_REMISION.CO_EMP_RUC = dbo.CO_EMPRESA.CO_EMP_RUC INNER JOIN
                         dbo.CO_DETALLE_GUIA_REMISION ON dbo.CO_GUIA_REMISION.CO_DOC_VEN_GUI_COD = dbo.CO_DETALLE_GUIA_REMISION.CO_DOC_VEN_GUI_COD LEFT OUTER JOIN
                         dbo.CO_DOCUMENTO_ELECTRONICO AS CO_DOCUMENTO_ELECTRONICO_1 ON dbo.CO_GUIA_REMISION.CO_DOC_VEN_GUI_COD = CO_DOCUMENTO_ELECTRONICO_1.CO_DOCUMENTO_ID



GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[21] 2[17] 3) )"
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
         Top = -96
         Left = 0
      End
      Begin Tables = 
         Begin Table = "CO_GUIA_REMISION"
            Begin Extent = 
               Top = 6
               Left = 682
               Bottom = 136
               Right = 930
            End
            DisplayFlags = 280
            TopColumn = 9
         End
         Begin Table = "CO_CLIENTE"
            Begin Extent = 
               Top = 12
               Left = 458
               Bottom = 142
               Right = 644
            End
            DisplayFlags = 280
            TopColumn = 5
         End
         Begin Table = "CO_DOCUMENTO_VENTA"
            Begin Extent = 
               Top = 270
               Left = 38
               Bottom = 400
               Right = 291
            End
            DisplayFlags = 280
            TopColumn = 43
         End
         Begin Table = "CO_EMPRESA"
            Begin Extent = 
               Top = 534
               Left = 38
               Bottom = 664
               Right = 297
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_DETALLE_GUIA_REMISION"
            Begin Extent = 
               Top = 6
               Left = 968
               Bottom = 170
               Right = 1185
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_DOCUMENTO_ELECTRONICO_1"
            Begin Extent = 
               Top = 144
               Left = 329
               Bottom = 274
               Right = 655
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
      Begin ColumnWidths = 50
       ', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_REPORTE_GUIA_REMISION', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane2', N'  Width = 284
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
         Width = 2460
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
', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_REPORTE_GUIA_REMISION', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=2
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_REPORTE_GUIA_REMISION', NULL, NULL
GO
