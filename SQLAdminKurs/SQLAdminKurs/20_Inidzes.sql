--Indizes


/*

Clustered INDEX   (gruppierter INDEX)
 = Tabelle in immer sortierter Form
 pro Tabelle nur einmal 
 gut bei:	bei Bereichsabfragen




non clustered INDEX  (nicht gruppierte INDEX)
Kopie von Daten in sortierter Form abgelegt
mit Index Struktur
pro Tabelle fast beliebig viele (max 1ca 1000)
gut bei:	rel geringer Ergebnismenge ( kann zwischen 1% und mehr)



Aufgaben des Admin
Fehlende Indizes finden
Überflüssige Indizes müssen weg
beste IX Strategie auf der Basis aller Abfragen im Lauf des Tages
IX müssen gewartet werden wg Fragmentierung


Wartungsplan .. am besten jeden Tag

Indizes fragemntieren durch häufige Inserts

ab 10% Fragmentierung-- Reorg
ab 30%                  Rebuild

Statistikwartung am besten täglich

Statistiken:
Histogramm bzgl der Verteilung der Daten einer Spalten
anders gesagt: 
wie hoch ist die Dichte eines Wertes in 
einer Spalte  ?

Kommen voraussichtlich wenige Datensätze als Ergebnis raus,
dann ist ein non clustered IX gut geeignet
;-)









*/

select * into kunden from customers


begin tran
update customers set city = 'Paris' where customerid = 'ALFKI'
update Kunden set city = 'Paris' where customerid = 'ALFKI'

rollback

delete from customers where customerid = 'ALFKI'