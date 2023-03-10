SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE VIEW [dbo].[CO_VW_SELECT_PAGOS_DOCUMENTO_COMPRA]
AS
SELECT     dbo.CO_PAGO_PROVEEDOR.CO_PAG_PRO_COD, dbo.CO_PAGO_PROVEEDOR.CO_PAG_PRO_VAL, dbo.CO_PAGO_PROVEEDOR.CO_PAG_PRO_FEC, 
                      dbo.CO_PAGO_PROVEEDOR.CO_PAG_PRO_CON, dbo.CO_PAGO_PROVEEDOR.CO_PAG_PRO_EST, dbo.CO_PAGO_PROVEEDOR.CO_DOC_COM_NUM, 
                      dbo.CO_PAGO_PROVEEDOR.CO_PAG_PRO_VAL_IMP, dbo.CO_PAGO_PROVEEDOR.CO_EMP_RUC, 
                      dbo.CO_DOCUMENTO_COMPRA.CO_PRO_COD
FROM         dbo.CO_PAGO_PROVEEDOR INNER JOIN
                      dbo.CO_DOCUMENTO_COMPRA ON dbo.CO_PAGO_PROVEEDOR.CO_DOC_COM_NUM = dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_ID AND 
                      dbo.CO_PAGO_PROVEEDOR.CO_EMP_RUC = dbo.CO_DOCUMENTO_COMPRA.CO_EMP_RUC
WHERE     (dbo.CO_PAGO_PROVEEDOR.CO_PAG_PRO_VAL <> 0 AND dbo.CO_DOCUMENTO_COMPRA.CO_DOC_COM_EST='APROBADO')


GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[32] 4[29] 2[16] 3) )"
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
         Begin Table = "CO_PAGO_PROVEEDOR"
            Begin Extent = 
               Top = 6
               Left = 309
               Bottom = 163
               Right = 605
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_DOCUMENTO_COMPRA"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 121
               Right = 271
            End
            DisplayFlags = 280
            TopColumn = 3
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 12
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
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 3210
         Alias = 900
         Table = 2280
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
', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_PAGOS_DOCUMENTO_COMPRA', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_PAGOS_DOCUMENTO_COMPRA', NULL, NULL
GO
