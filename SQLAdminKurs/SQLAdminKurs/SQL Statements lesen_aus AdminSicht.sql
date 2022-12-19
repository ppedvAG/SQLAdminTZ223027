---Monitoring

--Grafische Auswertung.. Windows Perfmon	 auch die Zeit!!
--Welche TSQL Statements zu welcher Zeit  Profiler

select * from ku where id = 100

--PLAN
--SCAN: alles durchsuchen müssen
--SEEK: gezieletes herauspicken

--andreasr@ppedv.de

select * from customers where customerid like '%ALFKI'

set statistics io, time on-- Anzahl der Seiten, Dauer in ms und CPU Zeit in ms

--bsp
select * from ku where id > 100
--SCAN
--Seiten ca 61000 * 8kb --> RAM  1:1
--, CPU-Zeit = 267 ms, verstrichene Zeit = 53 ms.----MAXDOP
--MAXDOP: entweder 1 Kern oder alle (bzw Einstellung des MAXDOP) 

--mit SEEK
 --0 ms  4 Seiten

 --Plan und Messung um das TSQL besser zu machen..
 --SCAN muss SEEK werden
