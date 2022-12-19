---Monitoring

--Grafische Auswertung.. 
--Windows Perfmon	 auch die Zeit!!
--Welche TSQL Statements zu welcher Zeit  Profiler

--auch ohne TSQL Kenntnisse:
--Plan anzeigen lassen..
select * from ku where id = 100

--PLAN
--SCAN: alles durchsuchen müssen
--SEEK: gezieletes herauspicken

--gleiches Ergbnis, aber 
select * from customers where customerid like '%ALFKI'
--65000 Seiten.. SCAN  200ms CPU
select * from customers where customerid = 'ALFKI'
--4 Seiten ...Seek 0 Sek


set statistics io, time on-- Anzahl der Seiten, Dauer in ms 

--bsp
select * from ku where id > 100
--SCAN
--Seiten ca 61000 * 8kb --> RAM  1:1
--, CPU-Zeit = 267 ms, verstrichene Zeit = 53 ms.----MAXDOP
--MAXDOP: entweder 1 Kern oder alle (bzw Einstellung des MAXDOP) 
--und CPU Zeit in ms

--mit SEEK
 --0 ms  4 Seiten

 --Plan und Messung um das TSQL besser zu machen..
 --SCAN muss SEEK werden
