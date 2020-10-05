# Teszt
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
|11.|Adatbázis csatlakozása az 1,oldal.php-hoz|Ha sikeresen csatlakozott írja ki az oldal hogy siker|Sikeresen csatlakozott a weboldalhoz|
|12.|Adatbázis csatlakozása a 2,oldal.php-hoz|Ha sikeresen csatlakozott írja ki az oldal hogy siker|Sikeresen csatlakozott a weboldalhoz|
|13.|Adatbázis csatlakozása a 3,oldal.php-hoz|Ha sikeresen csatlakozott írja ki az oldal hogy siker|Sikeresen csatlakozott a weboldalhoz|
|14.|Az első oldalon a gombok használatával a második oldalon sikeres lekérdezés katid szerint|Lefuttattam az első oldalt és kiválaszottam egy tetszőleges kategóriát.|Sikeresen kilistázta az adatbázisból a megfelelő sorokat|
|15.|A második oldalról a harmadik oldarra a megfelelő sor kiválasztásával részletes leírást kapni|Kilistáztam egy tetszőleges kategória tetszőleges sorát|Megjelentek az adatok a kiválaszott sorról|
|16.|A "Vissza az előző kategóriához" gombbal visszalehessen jutni a kilistázott kategória oldalra|Egy katidvel továbblépve megpróbálni a visszaugrást|Sikeresen visszalépett a második oldalra és kilistázta a megfelelő kategóriához tartozó tárgyakat|
|17.|A "Vissza a kategóriákhoz" gombbal visszalépni az első oldalra|egy a hreffel megadtam neki a címet|Sikeresen visszalépett|
|18.|Css sikeres kapcsolódása|A tablenek írtam margint,border colort |Sikeresen megkapott mindent|
|19.|A gombokra css-t állítani|Button attributera írtam különböző sorokat|Megkapta|
|20.|Az első oldal gombjaira background image éllítás|Css es background image attributeal az internetről képeket próbáltam beállítani|Sikeresen be lettek állítva a képek.|
