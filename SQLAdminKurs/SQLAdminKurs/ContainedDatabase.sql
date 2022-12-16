--Aktivieren der eigenständigen DB

EXEC sys.sp_configure N'contained database authentication', N'1'
GO
RECONFIGURE WITH OVERRIDE
GO

--Aktivieren auf DB 

USE [ContDB]
GO
CREATE USER [Tom] WITH PASSWORD=N'ppedv2021!'
GO


--Auswirkung.. der User sieht nur seine DB

--Nachteil: 
--- kein Zugriff auf andere DBs
--- keine Replikation


--teilweise??

-- nur Logins
_--Vorteil beim temp Tabellen
-- keine Jobs