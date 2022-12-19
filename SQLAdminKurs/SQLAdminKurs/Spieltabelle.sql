--Spieltabelle

SELECT      Customers.CustomerID, Customers.CompanyName, Customers.ContactName, Customers.ContactTitle, Customers.City, Customers.Country, Employees.LastName, Employees.FirstName, Orders.OrderDate, Orders.EmployeeID, Orders.Freight, Orders.ShipName, Orders.ShipAddress, Orders.ShipCity,
                   Orders.ShipCountry, [Order Details].OrderID, [Order Details].ProductID, [Order Details].UnitPrice, [Order Details].Quantity, Products.ProductName, Products.UnitsInStock
INTO KundeUmsatz
FROM         Customers INNER JOIN
                   Orders ON Customers.CustomerID = Orders.CustomerID INNER JOIN
                   Employees ON Orders.EmployeeID = Employees.EmployeeID INNER JOIN
                   [Order Details] ON Orders.OrderID = [Order Details].OrderID INNER JOIN
                   Products ON [Order Details].ProductID = Products.ProductID


insert into KundeUmsatz
select * from kundeumsatz
GO 9 --keine Varable darin möglich




alter table kundeumsatz add ID int identity
GO



select * from kundeumsatz where id < 100
Go 10

select * from kundeumsatz where id > 900000
Go 10


select customerid, companyname from kundeumsatz where country = 'USA'
 go 4
select customerid, companyname from kundeumsatz where country = 'UK'
 go 3
select customerid, companyname from kundeumsatz where country = 'France'
 go 5


 select sum(unitprice * quantity) , country, city from kundeumsatz
 where freight > 2 
group by country, city
GO 12

 select avg(freight) , Companyname, lastname from kundeumsatz
 where freight > 500
group by  Companyname, lastname
GO 12


create procedure gpdemo @id int
as
select * from KundeUmsatz where id < @id 
GO

exec gpdemo 10
GO 5

select * from Kundeumsatz where id < 10
GO 1


dbcc freeproccache

create nonclustered index nix on Kundeumsatz (id)
GO

exec gpdemo 10
GO 5

set statistics io, time on
exec gpdemo 1000000				  --liest zig mal mehr Seiten als die Tabelle hat
GO

select * from KundeUmsatz where id < 1000000
--Tabelle: "KundeUmsatz". Anzahl von Überprüfungen: 1, logische Lesevorgänge: 65099, physische Lesevorgänge: 0, Lesevorgänge Auslagerungsserver: 0, Read-Ahead-Lesevorgänge: 0, Read-Ahead-Lesevorgänge Auslagerungsserver: 0, logische LOB-Lesevorgänge: 0, physische LOB-Lesevorgänge: 0, LOB-Lesevorgänge Auslagerungsserver: 0, LOB-Read-Ahead-Lesevorgänge: 0, LOB-Read-Ahead-Lesevorgänge Auslagerungsserver: 0.

-- SQL Server-Ausführungszeiten: 
--, CPU-Zeit = 2844 ms, verstrichene Zeit = 17262 ms.

select * from Kundeumsatz where id < 10
GO 1






