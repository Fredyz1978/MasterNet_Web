SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_REPORTE_ESTADO_CUENTA_CLIENTE]
@CO_EMP_RUC CHAR(13)
,@CO_TIP_CLI_COD NVARCHAR(10)
,@CO_CLI_COD NVARCHAR(20)
,@CO_DOC_COM_FEC1 DATETIME
,@CO_DOC_COM_FEC2 DATETIME
,@USUARIO_ID INT
AS
if((select count(*) from CO_PARAMETRO WHERE PARAMETRO_VALUE=@USUARIO_ID AND PARAMETRO_KEY='USUARIO_VENTAS')=0)
BEGIN
	SELECT *,@CO_DOC_COM_FEC1 AS DESDE,@CO_DOC_COM_FEC2 AS HASTA 
	FROM CO_VW_SELECT_ESTADO_CUENTA_CLIENTE
	WHERE CO_EMP_RUC=@CO_EMP_RUC AND
	(CO_FEC_DOC>=@CO_DOC_COM_FEC1 AND CO_FEC_DOC<=@CO_DOC_COM_FEC2) AND
	CO_TIP_CLI_COD=case @CO_TIP_CLI_COD when '' then CO_TIP_CLI_COD else @CO_TIP_CLI_COD end  AND 
	CO_CLI_COD=case @CO_CLI_COD when '' then CO_CLI_COD else @CO_CLI_COD end 
	AND CO_TIP_DOC_VEN_NUM<>20 --TODOS LOS DOCUMENTOS EXCEPTO NV
	UNION
	--SELECT *,@CO_DOC_COM_FEC1 AS DESDE,@CO_DOC_COM_FEC2 AS HASTA 
	--FROM CO_VW_SELECT_ESTADO_CUENTA_CLIENTE
	--WHERE CO_EMP_RUC=@CO_EMP_RUC AND
	--cast(CO_FEC_DOC as date)<=cast('2018/08/31' as date) AND
	--CO_TIP_CLI_COD=case @CO_TIP_CLI_COD when '' then CO_TIP_CLI_COD else @CO_TIP_CLI_COD end  AND 
	--CO_CLI_COD=case @CO_CLI_COD when '' then CO_CLI_COD else @CO_CLI_COD end 
	--AND CO_TIP_DOC_VEN_NUM=20 --SOLO LOS DOCUMENTOS NV
	--UNION
	--SELECT *,@CO_DOC_COM_FEC1 AS DESDE,@CO_DOC_COM_FEC2 AS HASTA 
	--FROM CO_VW_SELECT_ESTADO_CUENTA_CLIENTE_COBRO
	--WHERE CO_EMP_RUC=@CO_EMP_RUC AND
	--cast(CO_FEC_DOC as date)<=cast('2018/08/31' as date) AND
	--CO_TIP_CLI_COD=case @CO_TIP_CLI_COD when '' then CO_TIP_CLI_COD else @CO_TIP_CLI_COD end  AND 
	--CO_CLI_COD=case @CO_CLI_COD when '' then CO_CLI_COD else @CO_CLI_COD end
	--AND CO_TIP_DOC_VEN_NUM=20 --SOLO LOS DOCUMENTOS NV
	--UNION 
	SELECT *,@CO_DOC_COM_FEC1 AS DESDE,@CO_DOC_COM_FEC2 AS HASTA 
	FROM CO_VW_SELECT_ESTADO_CUENTA_CLIENTE_COBRO
	WHERE CO_EMP_RUC=@CO_EMP_RUC AND
	(CO_FEC_DOC>=@CO_DOC_COM_FEC1 AND CO_FEC_DOC<=@CO_DOC_COM_FEC2) AND
	CO_TIP_CLI_COD=case @CO_TIP_CLI_COD when '' then CO_TIP_CLI_COD else @CO_TIP_CLI_COD end  AND 
	CO_CLI_COD=case @CO_CLI_COD when '' then CO_CLI_COD else @CO_CLI_COD end
	AND CO_TIP_DOC_VEN_NUM<>20 --TODOS LOS DOCUMENTOS EXCEPTO NV
	UNION
	--CLIENTES QUE NO TIENEN MOVIMIENTOS EN ESE PERIODO
	select '-' AS CO_DOC_VEN_NUM, 0 AS CO_TIP_DOC_VEN_NUM,'Saldo anterior: ' AS CO_PAG_DOC_VEN_CON,0 AS CO_FACTURAS,0 AS CO_COBROS, @CO_DOC_COM_FEC1 AS CO_FEC_DOC, 
				CO_CLI_COD,CO_CLI_CUE_CON,CO_CLI_NOM,c.CO_EMP_RUC, E.CO_EMP_NOM, C.CO_TIP_CLI_COD, TC.CO_TIP_CLI_NOM, @CO_DOC_COM_FEC1 AS DESDE, @CO_DOC_COM_FEC2 AS HASTA
	from CO_CLIENTE C inner join CO_EMPRESA E on C.CO_EMP_RUC=E.CO_EMP_RUC
	INNER JOIN CO_TIPO_CLIENTE TC ON TC.CO_TIP_CLI_COD=C.CO_TIP_CLI_COD
	and (C.CO_CLI_COD not in (select CO_CLI_COD from co_documento_venta
	where (CO_DOC_VEN_FEC>=@CO_DOC_COM_FEC1 AND CO_DOC_VEN_FEC<=@CO_DOC_COM_FEC2))
	and C.CO_CLI_COD not in (select CO_CLI_COD from co_cobro_cliente
	where (CO_COM_COB_CLI_FEC>=@CO_DOC_COM_FEC1 AND CO_COM_COB_CLI_FEC<=@CO_DOC_COM_FEC2)))
	WHERE
	C.CO_TIP_CLI_COD=case @CO_TIP_CLI_COD when '' then C.CO_TIP_CLI_COD else @CO_TIP_CLI_COD end  AND 
	C.CO_CLI_COD=case @CO_CLI_COD when '' then C.CO_CLI_COD else @CO_CLI_COD end
END
ELSE
BEGIN
	SELECT *,@CO_DOC_COM_FEC1 AS DESDE,@CO_DOC_COM_FEC2 AS HASTA 
	FROM CO_VW_SELECT_ESTADO_CUENTA_CLIENTE
	WHERE CO_EMP_RUC=@CO_EMP_RUC AND
	(CO_FEC_DOC>=@CO_DOC_COM_FEC1 AND CO_FEC_DOC<=@CO_DOC_COM_FEC2) AND
	CO_TIP_CLI_COD=case @CO_TIP_CLI_COD when '' then CO_TIP_CLI_COD else @CO_TIP_CLI_COD end  AND 
	CO_CLI_COD=case @CO_CLI_COD when '' then CO_CLI_COD else @CO_CLI_COD end 
	AND CO_TIP_DOC_VEN_NUM=20 --SOLO NV
	UNION
	SELECT *,@CO_DOC_COM_FEC1 AS DESDE,@CO_DOC_COM_FEC2 AS HASTA 
	FROM CO_VW_SELECT_ESTADO_CUENTA_CLIENTE_COBRO
	WHERE CO_EMP_RUC=@CO_EMP_RUC AND
	(CO_FEC_DOC>=@CO_DOC_COM_FEC1 AND CO_FEC_DOC<=@CO_DOC_COM_FEC2) AND
	CO_TIP_CLI_COD=case @CO_TIP_CLI_COD when '' then CO_TIP_CLI_COD else @CO_TIP_CLI_COD end  AND 
	CO_CLI_COD=case @CO_CLI_COD when '' then CO_CLI_COD else @CO_CLI_COD end
	AND CO_TIP_DOC_VEN_NUM=20 --SOLO NV
	UNION
	--CLIENTES QUE NO TIENEN MOVIMIENTOS EN ESE PERIODO
	select '-' AS CO_DOC_VEN_NUM, 0 AS CO_TIP_DOC_VEN_NUM,'Saldo anterior: ' AS CO_PAG_DOC_VEN_CON,0 AS CO_FACTURAS,0 AS CO_COBROS, @CO_DOC_COM_FEC1 AS CO_FEC_DOC, 
				CO_CLI_COD,CO_CLI_CUE_CON,CO_CLI_NOM,c.CO_EMP_RUC, E.CO_EMP_NOM, C.CO_TIP_CLI_COD, TC.CO_TIP_CLI_NOM, @CO_DOC_COM_FEC1 AS DESDE, @CO_DOC_COM_FEC2 AS HASTA
	from CO_CLIENTE C inner join CO_EMPRESA E on C.CO_EMP_RUC=E.CO_EMP_RUC
	INNER JOIN CO_TIPO_CLIENTE TC ON TC.CO_TIP_CLI_COD=C.CO_TIP_CLI_COD
	and (C.CO_CLI_COD not in (select CO_CLI_COD from co_documento_venta
	where (CO_TIP_DOC_VEN_NUM=20 AND CO_DOC_VEN_FEC>=@CO_DOC_COM_FEC1 AND CO_DOC_VEN_FEC<=@CO_DOC_COM_FEC2))
	and C.CO_CLI_COD not in (select CO_CLI_COD from co_cobro_cliente
	where (CO_COM_COB_CLI_FEC>=@CO_DOC_COM_FEC1 AND CO_COM_COB_CLI_FEC<=@CO_DOC_COM_FEC2)))
	WHERE
	C.CO_TIP_CLI_COD=case @CO_TIP_CLI_COD when '' then C.CO_TIP_CLI_COD else @CO_TIP_CLI_COD end  AND 
	C.CO_CLI_COD=case @CO_CLI_COD when '' then C.CO_CLI_COD else @CO_CLI_COD end
END
GO