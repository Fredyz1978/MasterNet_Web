SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE proc [dbo].[CO_SP_UPDATE_DARDEBAJA]
@AutorizacionID int, 
@Activo bit
AS
UPDATE [dbo].[CO_AUTORIZACION] SET [Activo]=@Activo
WHERE [AutorizacionID]=@AutorizacionID
GO
