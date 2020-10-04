## Teszt
|Sorszám|Funkció|Tesztelés módja, leírása|Eredmény|
|-------|-------|------------------------|--------|
|1.|Adatok felvitele az adatbázisba|Tesztadatok felvitele insert into utastásokkal a painting, fossils, statues, artifacts és generalData táblákba|Sikeres adatbázisműveletek|
|2.|Lekérdezés az adatbázisból|Különféle select utasítások, egyszerűbbek és összetettebbek|Sikeres, az adatbázisból a táblakapcsolatok útján sokféle szempontból lekérdezhetőek az adatok|
|3.|Törlés az adatbázisból|Delete utasítások végrehajtása: az on delete cascade beállítás miatt az idegen kulcssal azonostott rekordok is törlődnek.|Sikeres|
|4.|Adatok módosítása az adatbázisban|Az update utastás alkalmazása|Sikeres|
|5.|A stíluslapok között váltó gombok tesztelése|Az első gomra kattintva az alapértelmezett stíluslap kerül betöltésre, a másodikra kattintva az alternatív stíluslap töltődik be egy JavaScript függvény segítségével|Működik, de nem sikerült megoldani, hogy a menüpontok között váltva megmaradjon a kiválasztott stílus|
|6.|Az oldal reszponzivitása|A böngésző méretének változtatásával megnéztem, hogyan rendeződik a tartalom|Minden szélesség esetén megfelelően jelenik meg minden elem, nem esik szét az oldal|
|7.|A menüpontok tesztelése|Annak ellenőrzése, hogy minden menüpont a megfelelő oldalra irányít át, azaz hogy a routing.php fájl jól van beállítva|Sikeres|
|8.||||
|9.||||
|10.||||