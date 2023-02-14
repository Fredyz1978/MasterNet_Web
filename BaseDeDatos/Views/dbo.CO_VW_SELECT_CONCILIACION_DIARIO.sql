SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE VIEW [dbo].[CO_VW_SELECT_CONCILIACION_DIARIO]
AS
SELECT     dbo.CO_TIPO_TRANSACCION.CO_TIP_TRA_COD, dbo.CO_CONCILIACION.CO_CON_BAN_TRA_NUM, dbo.CO_CONCILIACION.CO_CON_BAN_FEC, 
                      dbo.CO_CONCILIACION.CO_CON_BAN_NOM_BEN, dbo.CO_CONCILIACION.CO_CON_BAN_VAL, dbo.CO_CONCILIACION.CO_CON_BAN_USU_ALI, 
                      dbo.CO_CONCILIACION.CO_EMP_RUC, dbo.CO_CONCILIACION.CO_CONTABILIDAD_COM_NUM, dbo.CO_CONCILIACION.CO_CONTABILIDAD_TIP_COM_COD, 
                      dbo.CO_CONCILIACION.CO_CON_BAN_COD, dbo.CO_CONCILIACION.CO_CON_BAN_CON, 
                      dbo.CO_TIPO_TRANSACCION.CO_TIP_TRA_OPE, dbo.CO_CONCILIACION.CO_CON_BAN_VAL_LET, dbo.CO_CONCILIACION.CO_CC_NUM, 
                      dbo.CO_CONCILIACION.CO_DOCUMENTO_NUM, dbo.CO_CUENTA_CORRIENTE.CO_CC_NOM, 
                      dbo.CO_CUENTA_CORRIENTE.CO_CUE_COD, (select CO_CUE_NOM from dbo.CO_CUENTA where dbo.CO_CUENTA.CO_CUE_COD=dbo.CO_CUENTA_CORRIENTE.CO_CUE_COD and dbo.CO_CUENTA.CO_EMP_RUC=dbo.CO_CONCILIACION.CO_EMP_RUC) as CO_CUE_NOM,
dbo.CO_CONCILIACION.CO_DOCUMENTO_TIPO

FROM         dbo.CO_CONCILIACION INNER JOIN
                      dbo.CO_TIPO_TRANSACCION ON dbo.CO_CONCILIACION.CO_TIP_TRA_COD = dbo.CO_TIPO_TRANSACCION.CO_TIP_TRA_COD AND 
                      dbo.CO_CONCILIACION.CO_EMP_RUC = dbo.CO_TIPO_TRANSACCION.CO_EMP_RUC INNER JOIN
                      dbo.CO_CUENTA_CORRIENTE ON dbo.CO_CONCILIACION.CO_CC_NUM = dbo.CO_CUENTA_CORRIENTE.CO_CC_NUM


GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[42] 4[10] 2[20] 3) )"
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
         Begin Table = "CO_CONCILIACION"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 113
               Right = 244
            End
            DisplayFlags = 280
            TopColumn = 11
         End
         Begin Table = "CO_TIPO_TRANSACCION"
            Begin Extent = 
               Top = 6
               Left = 282
               Bottom = 121
               Right = 496
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_CUENTA_CORRIENTE"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 241
               Right = 202
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_CUENTA"
            Begin Extent = 
               Top = 43
               Left = 493
               Bottom = 158
               Right = 663
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_COMPROBANTE"
            Begin Extent = 
               Top = 126
               Left = 240
               Bottom = 241
               Right = 420
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_TIPO_COMPROBANTE"
            Begin Extent = 
               Top = 246
               Left = 38
               Bottom = 361
               Right = 214
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
      Begin ColumnWidths = 18
         Width = 284', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_CONCILIACION_DIARIO', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane2', N'
         Width = 1500
         Width = 1500
         Width = 1935
         Width = 2265
         Width = 1755
         Width = 2055
         Width = 1815
         Width = 1500
         Width = 1980
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
', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_CONCILIACION_DIARIO', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=2
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_CONCILIACION_DIARIO', NULL, NULL
GO
