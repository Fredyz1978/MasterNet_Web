IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'NT AUTHORITY\NETWORK SERVICE')
CREATE LOGIN [NT AUTHORITY\NETWORK SERVICE] FROM WINDOWS
GO
CREATE USER [NETWORK SERVICE] FOR LOGIN [NT AUTHORITY\NETWORK SERVICE]
GO
