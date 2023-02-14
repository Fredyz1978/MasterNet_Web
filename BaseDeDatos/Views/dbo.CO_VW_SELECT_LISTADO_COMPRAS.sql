SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE VIEW [dbo].[CO_VW_SELECT_LISTADO_COMPRAS]
AS
SELECT        dbo.CO_EMPRESA.CO_EMP_NOM, dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_NUM, dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_FEC_EMI, dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_FEC_REG, 
                         dbo.CO_PROVEEDOR.CO_PRO_CED, dbo.CO_PROVEEDOR.CO_PRO_NOM, dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_ETA, dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_PUN_EMI, 
                         dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_SEC, dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_NUM_AUT, 
						 case when [CO_TIP_COM_COM_COD]<>4 then dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_TOT_NET else dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_TOT_NET*-1 end as CO_DOC_COM_TOT_NET, 
                         case when [CO_TIP_COM_COM_COD]<>4 then dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_IVA else dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_IVA*-1 end as CO_DOC_COM_IVA, 
						 case when [CO_TIP_COM_COM_COD]<>4 then dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_TOT_PAG else dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_TOT_PAG*-1 end as CO_DOC_COM_TOT_PAG, 
						 dbo.CO_EMPRESA.CO_EMP_RUC, dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_EST, 
                         dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_FOR_PAG, dbo.CO_PROVEEDOR.CO_TIP_PRO_COD, dbo.CO_PROVEEDOR.CO_PRO_COD, dbo.CO_DOCUMENTO_COMPRA.CO_TIP_SUS_COD, 
                         dbo.CO_DOCUMENTO_COMPRA.CO_TIP_COM_COM_COD, dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_DES, dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_POR_DES, 
                         dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_POR_IVA, 
						 case when [CO_TIP_COM_COM_COD]<>4 then dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_VAL_IVA0 else dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_VAL_IVA0*-1 end as CO_DOC_COM_VAL_IVA0
FROM            dbo.CO_EMPRESA INNER JOIN
                         dbo.CO_DOCUMENTO_COMPRA ON dbo.CO_EMPRESA.CO_EMP_RUC = dbo.CO_DOCUMENTO_COMPRA.CO_EMP_RUC INNER JOIN
                         dbo.CO_PROVEEDOR ON dbo.CO_DOCUMENTO_COMPRA.CO_PRO_COD = dbo.CO_PROVEEDOR.CO_PRO_COD


GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[51] 4[15] 2[10] 3) )"
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
            TopColumn = 0
         End
         Begin Table = "CO_DOCUMENTO_COMPRA"
            Begin Extent = 
               Top = 52
               Left = 304
               Bottom = 229
               Right = 537
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_PROVEEDOR"
            Begin Extent = 
               Top = 21
               Left = 586
               Bottom = 136
               Right = 782
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
      Begin ColumnWidths = 22
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
         Width = 2040
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
         Column = 2745
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_LISTADO_COMPRAS', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane2', N'350
         Or = 1350
         Or = 1350
      End
   End
End
', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_LISTADO_COMPRAS', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=2
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_LISTADO_COMPRAS', NULL, NULL
GO
