SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


-- View

CREATE VIEW [dbo].[CO_VW_SELECT_REPORTE_RETENCION]
AS
SELECT        dbo.CO_RETENCION.CO_RET_BEN_NOM, dbo.CO_RETENCION.CO_RET_BEN_NUM_RUC, dbo.CO_RETENCION.CO_RET_BEN_DIR, dbo.CO_RETENCION.CO_RET_BEN_FEC_EMI, dbo.CO_RETENCION.CO_RET_EJE_FIS, 
                         dbo.CO_RETENCION.CO_RET_TIP, dbo.CO_RETENCION.CO_RET_AUT, dbo.CO_RETENCION.CO_RET_NUM_REF, dbo.CO_RETENCION.CO_RET_SER2, dbo.CO_RETENCION.CO_RET_SER1, dbo.CO_EMPRESA.CO_EMP_NOM, 
                         dbo.CO_EMPRESA.CO_EMP_CIU, dbo.CO_EMPRESA.CO_EMP_DIR, dbo.CO_DOCUMENTO_ELECTRONICO.CO_CODIGO_BARRAS_FACT_ELECTRONICA, 
                         dbo.CO_DOCUMENTO_ELECTRONICO.CO_CLAVE_ACCESO_FACT_ELECTRONICA, dbo.CO_DOCUMENTO_ELECTRONICO.CO_FECHA_AUTORIZA_FACT_ELECTRONICA, dbo.CO_EMPRESA.CO_EMP_RUC, 
                         dbo.CO_DETALLE_RETENCION.CO_RET_COD, dbo.CO_DETALLE_RETENCION.CO_RET_BAS, dbo.CO_DETALLE_RETENCION.CO_RET_DET_COD, dbo.CO_DETALLE_RETENCION.CO_TIP_RET_NOM, 
                         dbo.CO_DETALLE_RETENCION.CO_TIP_RET_COD_SRI, dbo.CO_DETALLE_RETENCION.CO_RET_POR, dbo.CO_DETALLE_RETENCION.CO_RET_VAL, dbo.CO_EMPRESA.CO_OBLIGADO_CONTABILIDAD, 
                         dbo.CO_DETALLE_RETENCION.CO_RET_DET_IMP,
                             (SELECT        dbo.CO_PROVEEDOR.CO_PRO_MAI
                               FROM            dbo.CO_PROVEEDOR INNER JOIN
                                                         dbo.CO_DOCUMENTO_COMPRA ON dbo.CO_PROVEEDOR.CO_PRO_COD = dbo.CO_DOCUMENTO_COMPRA.CO_PRO_COD
                               WHERE        (dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_ID = dbo.CO_RETENCION.CO_DOC_COM_ID)) AS CO_PRO_MAI, 
						dbo.CO_EMPRESA.CO_EMPRESA_LOGO,
						(SELECT CO_PRO_TEL1 FROM [dbo].[CO_PROVEEDOR] INNER JOIN [dbo].[CO_DOCUMENTO_COMPRA] ON [dbo].[CO_PROVEEDOR].CO_PRO_COD=[dbo].[CO_DOCUMENTO_COMPRA].CO_PRO_COD
						 WHERE [dbo].[CO_DOCUMENTO_COMPRA].CO_DOC_COM_ID=dbo.CO_RETENCION.CO_DOC_COM_ID) AS CO_PRO_TEL1,
						(select [CO_DOC_COM_ETA]+'-'+[CO_DOC_COM_PUN_EMI]+'-'+[CO_DOC_COM_SEC] from [dbo].[CO_DOCUMENTO_COMPRA]
						where dbo.CO_RETENCION.CO_DOC_COM_ID=[dbo].[CO_DOCUMENTO_COMPRA].CO_DOC_COM_ID) AS CO_FACTURA_COMPRA_NUMERO,
						(select CO_DOC_COM_FEC_EMI from [dbo].[CO_DOCUMENTO_COMPRA]
						where dbo.CO_RETENCION.CO_DOC_COM_ID=[dbo].[CO_DOCUMENTO_COMPRA].CO_DOC_COM_ID) AS CO_DOC_COM_FEC_EMI
FROM            dbo.CO_DETALLE_RETENCION INNER JOIN
                         dbo.CO_RETENCION ON dbo.CO_DETALLE_RETENCION.CO_RET_COD = dbo.CO_RETENCION.CO_RET_COD INNER JOIN
                         dbo.CO_EMPRESA ON dbo.CO_RETENCION.CO_EMP_RUC = dbo.CO_EMPRESA.CO_EMP_RUC LEFT OUTER JOIN
                         dbo.CO_DOCUMENTO_ELECTRONICO ON dbo.CO_RETENCION.CO_RET_COD = dbo.CO_DOCUMENTO_ELECTRONICO.CO_DOCUMENTO_ID




GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[49] 4[13] 2[21] 3) )"
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
         Begin Table = "CO_DETALLE_RETENCION"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 242
            End
            DisplayFlags = 280
            TopColumn = 6
         End
         Begin Table = "CO_RETENCION"
            Begin Extent = 
               Top = 6
               Left = 280
               Bottom = 197
               Right = 499
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_EMPRESA"
            Begin Extent = 
               Top = 6
               Left = 537
               Bottom = 136
               Right = 796
            End
            DisplayFlags = 280
            TopColumn = 14
         End
         Begin Table = "CO_DOCUMENTO_ELECTRONICO"
            Begin Extent = 
               Top = 138
               Left = 537
               Bottom = 268
               Right = 863
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
      Begin ColumnWidths = 26
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
         ', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_REPORTE_RETENCION', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane2', N'Width = 1500
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
', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_REPORTE_RETENCION', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=2
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_REPORTE_RETENCION', NULL, NULL
GO
