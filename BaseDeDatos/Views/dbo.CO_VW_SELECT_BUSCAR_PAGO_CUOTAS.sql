SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[CO_VW_SELECT_BUSCAR_PAGO_CUOTAS]
AS
SELECT     dbo.PROFESOR.PROF_COD, dbo.PROFESOR.PROF_APE + ' ' + dbo.PROFESOR.PROF_NOM AS EMPLEADO, 
                      dbo.CO_COMPROBANTE_COBRO.CO_COM_COB_NUM, dbo.CO_COMPROBANTE_COBRO.CO_COM_COB_FEC, 
                      dbo.CO_COMPROBANTE_COBRO.CO_COM_COB_VAL, dbo.CO_COMPROBANTE_COBRO.CO_COM_COB_CON, 
                      dbo.CO_COMPROBANTE_COBRO.CO_COM_COB_COM, dbo.CO_COMPROBANTE_COBRO.CO_COM_COB_EST, 
                      dbo.CO_COMPROBANTE_COBRO.CO_EMP_RUC, dbo.CO_COMPROBANTE_COBRO.CO_COM_COB_FOR_COB, 
                      dbo.CO_COMPROBANTE_COBRO.CO_COM_COB_EFE, dbo.CO_COMPROBANTE_COBRO.CO_COM_COB_EFE_VAL, 
                      dbo.CO_COMPROBANTE_COBRO.CO_COM_COB_CHE, dbo.CO_COMPROBANTE_COBRO.CO_COM_COB_CHE_VAL, 
                      dbo.CO_COMPROBANTE_COBRO.CO_COM_COB_CHE_NUM, dbo.CO_COMPROBANTE_COBRO.CO_COM_COB_CHE_BAN, 
                      dbo.CO_COMPROBANTE_COBRO.CO_COM_COB_ROL, dbo.CO_COMPROBANTE_COBRO.CO_COM_COB_ROL_VAL, 
                      dbo.CO_COMPROBANTE_COBRO.CO_COM_COB_ROL_DOC_NUM, dbo.CO_COMPROBANTE_COBRO.CO_COM_NUM, 
                      dbo.CO_COMPROBANTE_COBRO.CO_TIP_COM_COD
FROM         dbo.CO_COMPROBANTE_COBRO INNER JOIN
                      dbo.PROFESOR ON dbo.CO_COMPROBANTE_COBRO.PROF_COD = dbo.PROFESOR.PROF_COD
WHERE     (dbo.CO_COMPROBANTE_COBRO.CO_COM_COB_EST = 1)
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[14] 3) )"
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
         Begin Table = "CO_COMPROBANTE_COBRO"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 206
               Right = 238
            End
            DisplayFlags = 280
            TopColumn = 12
         End
         Begin Table = "PROFESOR"
            Begin Extent = 
               Top = 6
               Left = 276
               Bottom = 121
               Right = 462
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
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
         Width = 2145
         Width = 2040
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
         Column = 2460
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
', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_BUSCAR_PAGO_CUOTAS', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_BUSCAR_PAGO_CUOTAS', NULL, NULL
GO
