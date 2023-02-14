SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE VIEW [dbo].[CO_VW_SELECT_CONCILIACION_REPORTE]
AS
SELECT     dbo.CO_EMPRESA.CO_EMP_RUC, dbo.CO_EMPRESA.CO_EMP_NOM, dbo.CO_CUENTA_CORRIENTE.CO_CC_NUM, dbo.CO_CUENTA_CORRIENTE.CO_CC_NOM, 
                      '' as CO_CEN_COS_COD, dbo.CO_CONCILIACION.CO_CON_BAN_FEC, dbo.CO_CONCILIACION.CO_TIP_TRA_COD, 
                      dbo.CO_CONCILIACION.CO_CONTABILIDAD_TIP_COM_COD AS CO_TIP_COM_COD, dbo.CO_CONCILIACION.CO_CONTABILIDAD_COM_NUM AS CO_COM_NUM, 
                      dbo.CO_CONCILIACION.CO_CON_BAN_VAL, dbo.CO_CONCILIACION.CO_CON_BAN_TRA_NUM AS CO_CON_BAN_DOC_NUM, 
                      dbo.CO_CONCILIACION.CO_CON_BAN_NOM_BEN, dbo.CO_TIPO_TRANSACCION.CO_TIP_TRA_OPE AS CO_CON_BAN_AFE, dbo.CO_CUENTA_CORRIENTE.CO_CC_SAL_INI, 
                      dbo.CO_CONCILIACION.CO_CON_BAN_CON, dbo.CO_CUENTA_CORRIENTE.CO_CC_SAL_LIB
FROM         dbo.CO_CUENTA_CORRIENTE INNER JOIN
                      dbo.CO_CONCILIACION ON dbo.CO_CUENTA_CORRIENTE.CO_CC_NUM = dbo.CO_CONCILIACION.CO_CC_NUM INNER JOIN
                      dbo.CO_EMPRESA ON dbo.CO_CUENTA_CORRIENTE.CO_EMP_RUC = dbo.CO_EMPRESA.CO_EMP_RUC
					  INNER JOIN dbo.CO_TIPO_TRANSACCION ON dbo.CO_TIPO_TRANSACCION.CO_TIP_TRA_COD=dbo.CO_CONCILIACION.CO_TIP_TRA_COD
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[46] 4[19] 2[9] 3) )"
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
         Left = -17
      End
      Begin Tables = 
         Begin Table = "CO_CUENTA_CORRIENTE"
            Begin Extent = 
               Top = 5
               Left = 292
               Bottom = 120
               Right = 540
            End
            DisplayFlags = 280
            TopColumn = 5
         End
         Begin Table = "CO_CONCILIACION"
            Begin Extent = 
               Top = 17
               Left = 591
               Bottom = 202
               Right = 797
            End
            DisplayFlags = 280
            TopColumn = 5
         End
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
         Begin Table = "CO_CENTRO_COSTO"
            Begin Extent = 
               Top = 133
               Left = 282
               Bottom = 233
               Right = 506
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
      Begin ColumnWidths = 17
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1635
         Width = 1740
         Width = 1560
         Width = 1605
         Width = 1500
         Width = 1590
         Width = 2070
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1935
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2010
         Alias = 900
         Table = 1170
         Output = 720
        ', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_CONCILIACION_REPORTE', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane2', N' Append = 1400
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
', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_CONCILIACION_REPORTE', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=2
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_CONCILIACION_REPORTE', NULL, NULL
GO
