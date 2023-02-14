SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[CO_VW_SELECT_ANEXOS_COMPRAS]
AS
SELECT     dbo.CO_DOCUMENTO_COMPRA.CO_TIP_SUS_COD AS codSustento, 'N' AS devIva, dbo.CO_PROVEEDOR.CO_TIP_IDE_PRO_COD AS tpIdProv, 
                      dbo.CO_PROVEEDOR.CO_PRO_CED AS idProv, dbo.CO_DOCUMENTO_COMPRA.CO_TIP_COM_COM_COD AS tipoComprobante, 
                      dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_FEC_REG AS fechaRegistro, dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_ETA AS establecimiento, 
                      dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_PUN_EMI AS puntoEmision, dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_SEC AS secuencial, 
                      dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_FEC_EMI AS fechaEmision, 
                      dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_NUM_AUT AS autorizacion, CONVERT(varchar(2), 
                      dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_FEC_CAD, 101) + '/' + CAST(YEAR(dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_FEC_CAD) 
                      AS nvarchar(4)) AS fechaCaducidad, '0.00' AS baseImponible, dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_TOT_NET AS baseImpGrav, 
                      '2' AS porcentajeIva, dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_IVA AS montoIva, '0' AS porcentajeIce, '0.00' AS montoIce, 
                      dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_IVA AS montoIvaBienes, '0' AS porRetBienes, '0.00' AS valorRetBienes, '0.00' AS montoIvaServicios, 
                      '0' AS porRetServicios, '0.00' AS valorRetServicios, dbo.CO_DOCUMENTO_COMPRA.CO_EMP_RUC, 
                      dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_FEC_REG, dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_NUM
FROM         dbo.CO_DOCUMENTO_COMPRA INNER JOIN
                      dbo.CO_PROVEEDOR ON dbo.CO_DOCUMENTO_COMPRA.CO_PRO_COD = dbo.CO_PROVEEDOR.CO_PRO_COD
WHERE     (dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_EST = 'ACTIVA') AND (NOT (dbo.CO_DOCUMENTO_COMPRA.CO_TIP_COM_COM_COD = 2))
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[36] 4[19] 2[11] 3) )"
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
         Begin Table = "CO_DOCUMENTO_COMPRA"
            Begin Extent = 
               Top = 0
               Left = 195
               Bottom = 188
               Right = 428
            End
            DisplayFlags = 280
            TopColumn = 20
         End
         Begin Table = "CO_PROVEEDOR"
            Begin Extent = 
               Top = 6
               Left = 472
               Bottom = 121
               Right = 668
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
      Begin ColumnWidths = 29
         Width = 284
         Width = 1725
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
         Column = 2610
         Alias = 2040
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
', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_ANEXOS_COMPRAS', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_ANEXOS_COMPRAS', NULL, NULL
GO
