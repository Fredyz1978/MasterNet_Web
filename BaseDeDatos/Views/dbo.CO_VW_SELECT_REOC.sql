SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO








CREATE VIEW [dbo].[CO_VW_SELECT_REOC]
AS
SELECT DISTINCT 
                         C.CO_TIP_SUS_COD AS codSustento, TI.CO_TIP_IDE_COD_SRI AS tpIdProv, P.CO_PRO_CED AS idProv, C.CO_TIP_COM_COM_COD AS tipoComprobante, 
                         'NO' AS parteRel, C.CO_DOC_COM_FEC_REG AS fechaRegistro, C.CO_DOC_COM_ETA AS establecimiento, C.CO_DOC_COM_PUN_EMI AS puntoEmision, 
                         C.CO_DOC_COM_SEC AS secuencial, C.CO_DOC_COM_FEC_REG AS fechaEmision, ltrim(rtrim(C.CO_DOC_COM_NUM_AUT)) AS autorizacion, 
						 0 AS baseNoGraIva, 
                         case when C.CO_DOC_COM_POR_IVA=0 THEN cast(round(C.CO_DOC_COM_TOT_NET,2) as numeric(36,2)) ELSE  C.CO_DOC_COM_VAL_IVA0 END AS baseImponible, 
						 case when C.CO_DOC_COM_POR_IVA<>0 THEN cast(round(C.CO_DOC_COM_TOT_NET,2) as numeric(36,2)) ELSE  cast('0.00' as numeric(36,2)) END AS baseImpGrav, 
						 0 AS baseImpExe, 0 AS montoIce, 
						 cast(round(C.CO_DOC_COM_IVA,2) as numeric(36,2)) AS montoIva, 0 AS valRetBien10, 
                         0 AS valRetServ20, 0 AS valorRetBienes, 0 AS valRetServ50, 0 AS valorRetServicios, 
						 ISNULL((SELECT TOP 1 CO_RET_VAL FROM dbo.CO_RETENCION R INNER JOIN CO_DETALLE_RETENCION DR ON R.CO_RET_COD=DR.CO_RET_COD
									WHERE C.CO_DOC_COM_ID = R.CO_DOC_COM_ID AND DR.CO_RET_DET_IMP='IVA' AND DR.CO_RET_POR=100),0) AS valRetServ100, 
						 0 AS totbasesImpReemb,
						 (SELECT TOP 1 CO_RET_SER1 FROM dbo.CO_RETENCION WHERE C.CO_DOC_COM_ID = dbo.CO_RETENCION.CO_DOC_COM_ID) AS estabRetencion1,
						 (SELECT TOP 1 CO_RET_SER2 FROM dbo.CO_RETENCION WHERE C.CO_DOC_COM_ID = dbo.CO_RETENCION.CO_DOC_COM_ID) AS ptoEmiRetencion1,
						 (SELECT TOP 1 CO_RET_NUM_REF FROM dbo.CO_RETENCION WHERE C.CO_DOC_COM_ID = dbo.CO_RETENCION.CO_DOC_COM_ID) AS secRetencion1,
						 isnull((SELECT TOP 1 ltrim(rtrim(dbo.CO_RETENCION.CO_RET_AUT)) FROM dbo.CO_RETENCION WHERE C.CO_DOC_COM_ID = dbo.CO_RETENCION.CO_DOC_COM_ID),'') AS autRetencion1,
						 (SELECT TOP 1 CO_RET_BEN_FEC_EMI FROM dbo.CO_RETENCION WHERE C.CO_DOC_COM_ID = dbo.CO_RETENCION.CO_DOC_COM_ID) AS fechaEmiRet1,
                         C.CO_EMP_RUC AS EmpresaRuc, C.CO_DOC_COM_ID
FROM            dbo.CO_DOCUMENTO_COMPRA AS C INNER JOIN
                         dbo.CO_PROVEEDOR AS P ON C.CO_PRO_COD = P.CO_PRO_COD
						 INNER JOIN dbo.CO_TIPO_IDENTIFICACION TI ON P.CO_TIP_IDE_COD=TI.CO_TIP_IDE_COD
						 --LEFT OUTER JOIN
                         --dbo.CO_RETENCION ON C.CO_EMP_RUC = dbo.CO_RETENCION.CO_EMP_RUC AND C.CO_DOC_COM_ID = dbo.CO_RETENCION.CO_DOC_COM_ID
WHERE        (C.CO_DOC_COM_EST = 'APROBADO') AND (C.CO_TIP_COM_COM_COD IN (1,2))









GO
EXEC sp_addextendedproperty N'MS_DiagramPane1', N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
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
         Begin Table = "C"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 135
               Right = 295
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "P"
            Begin Extent = 
               Top = 47
               Left = 381
               Bottom = 176
               Right = 603
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CO_RETENCION"
            Begin Extent = 
               Top = 270
               Left = 38
               Bottom = 399
               Right = 289
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
', 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_REOC', NULL, NULL
GO
DECLARE @xp int
SELECT @xp=1
EXEC sp_addextendedproperty N'MS_DiagramPaneCount', @xp, 'SCHEMA', N'dbo', 'VIEW', N'CO_VW_SELECT_REOC', NULL, NULL
GO
