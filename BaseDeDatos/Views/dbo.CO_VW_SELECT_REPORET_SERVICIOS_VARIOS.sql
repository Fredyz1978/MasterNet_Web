SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[CO_VW_SELECT_REPORET_SERVICIOS_VARIOS]
AS
SELECT     dbo.CO_EMPRESA.CO_EMP_NOM, dbo.CO_EMPRESA.CO_EMP_CIU, dbo.CO_DETALLE_DOCUMENTO_VENTA.CO_DET_DOC_VEN_ART_COD, 
                      dbo.CO_DETALLE_DOCUMENTO_VENTA.CO_DET_DOC_VEN_ART_NOM, dbo.CO_SERVICIO.CO_TIP_SER_COD, 
                      dbo.CO_TIPO_SERVICIO.CO_TIP_SER_NOM, dbo.CO_DETALLE_DOCUMENTO_VENTA.CO_DET_DOC_VEN_CAN, 
                      dbo.CO_DETALLE_DOCUMENTO_VENTA.CO_DET_DOC_VEN_PRE, dbo.CO_DOCUMENTO_VENTA.CO_EMP_RUC, 
                      dbo.CO_DOCUMENTO_VENTA.CO_VEN_CED, dbo.CO_DOCUMENTO_VENTA.CO_TIP_DOC_VEN_NUM, 
                      dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_NUM, dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_FEC
FROM         dbo.CO_DOCUMENTO_VENTA INNER JOIN
                      dbo.CO_DETALLE_DOCUMENTO_VENTA ON dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_ID = dbo.CO_DETALLE_DOCUMENTO_VENTA.CO_DOC_VEN_ID INNER JOIN
                      dbo.CO_EMPRESA ON dbo.CO_DOCUMENTO_VENTA.CO_EMP_RUC = dbo.CO_EMPRESA.CO_EMP_RUC INNER JOIN
                      dbo.CO_SERVICIO ON dbo.CO_DETALLE_DOCUMENTO_VENTA.CO_DET_DOC_VEN_ART_COD = dbo.CO_SERVICIO.CO_SER_COD INNER JOIN
                      dbo.CO_TIPO_SERVICIO ON dbo.CO_EMPRESA.CO_EMP_RUC = dbo.CO_TIPO_SERVICIO.CO_EMP_RUC AND 
                      dbo.CO_SERVICIO.CO_TIP_SER_COD = dbo.CO_TIPO_SERVICIO.CO_TIP_SER_COD AND 
                      dbo.CO_SERVICIO.CO_EMP_RUC = dbo.CO_TIPO_SERVICIO.CO_EMP_RUC
WHERE     (dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_EST = N'ACTIVA')
GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[38] 4[30] 2[12] 3) )"
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
         Begin Table = "CO_DOCUMENTO_VENTA"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 156
               Right = 266
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "CO_DETALLE_DOCUMENTO_VENTA"
            Begin Extent = 
               Top = 45
               Left = 303
               Bottom = 160
               Right = 532
            End
            DisplayFlags = 280
            TopColumn = 6
         End
         Begin Table = "CO_EMPRESA"
            Begin Extent = 
               Top = 6
               Left = 780
               Bottom = 121
               Right = 959
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "CO_SERVICIO"
            Begin Extent = 
               Top = 74
               Left = 561
               Bottom = 189
               Right = 732
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_TIPO_SERVICIO"
            Begin Extent = 
               Top = 115
               Left = 769
               Bottom = 230
               Right = 967
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
      Begin ColumnWidths = 14
         Width = 284
         Width = 1500
         Width = 1500
         Width = 2685
         Width = 1500
         Width = 2145
         Width = 2115
         Width = 1755
         Width = 1500
         Width = 2280
         Width = 2115
         Width = 1500
         Width ', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_REPORET_SERVICIOS_VARIOS', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_DiagramPane2', N'= 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2610
         Alias = 1350
         Table = 2385
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
', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_REPORET_SERVICIOS_VARIOS', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=2
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_REPORET_SERVICIOS_VARIOS', NULL, NULL
GO
