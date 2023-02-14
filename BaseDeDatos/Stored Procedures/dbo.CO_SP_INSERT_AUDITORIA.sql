SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_INSERT_AUDITORIA]
@AUDITORIA_ID uniqueidentifier,
           @TABLA varchar(200),
           @CAMPO varchar(100),
           @VALOR_ANTERIOR varchar(1000),
           @VALOR_NUEVO varchar(1000),
           @IP_CAMBIO varchar(50),
           @USUARIO_CAMBIO varchar(50),
           @FECHA_CAMBIO datetime
AS
INSERT INTO [dbo].[CO_AUDITORIA]
           ([AUDITORIA_ID]
           ,[TABLA]
           ,[CAMPO]
           ,[VALOR_ANTERIOR]
           ,[VALOR_NUEVO]
           ,[IP_CAMBIO]
           ,[USUARIO_CAMBIO]
           ,[FECHA_CAMBIO])
     VALUES
           (@AUDITORIA_ID,
           @TABLA,
           @CAMPO,
           @VALOR_ANTERIOR,
           @VALOR_NUEVO,
           @IP_CAMBIO,
           @USUARIO_CAMBIO,
           @FECHA_CAMBIO)
GO
