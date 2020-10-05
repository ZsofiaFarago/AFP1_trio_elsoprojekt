# Követelményspecifikáció

## Jelenlegi üzleti folyamatok modellje
1. Tájékozódás a múzeummal kapcsolatban:  
1.1. Alapvető információk elérhetőek a honlapon: cím, telefonszám, email, nyitvatartás, nyitvatartás, jegyárak, kedvezmények  
Probléma: a láblécen, nehezen észrevehető helyen és formában szerepel, nincs beágyazott térkép   
1.2. Tájékozódás a kiállításról  
1.2.1. Telefonon vagy emailen keresztül, a recepciós válaszol  
Probléma: lassú folyamat, a vonal gyakran foglalt, nyitvatartási időhöz kötött  
1.2.2. Prospektusból, mely a múzeum épületében van kihelyezve  
Probléma: korlátozott mennyiségben érhetőek el, helyhez és nyitvatartási időhöz kötött, a nyomtatási költség magas

## Igényelt üzleti folyamatok modellje
1. Informatívabb weboldal fejlesztése  
1.1. Az alapvető információk (cím, telefonszám, email, nyitvatartás, nyitvatartás, jegyárak, kedvezmények) jobban észrevehtő helyen és formában  
1.2. Beágyazott Google Maps mutatja a múzeum helyét  
1.3. Tájékozódás a kiállításról már teljesen a weboldalról lehetséges  
1.3.1. Minden kiállítási tárgy kategóriákba rendezve kilistázható (festmény, szobor, műkincs, fosszlia) a főmenüből  
1.3.2. Minden kilistázott tárgy az ő képével és legfontosabb adataival jelenik meg  
1.3.3. Új tárgy felvitele: adminisztrátori jogosultsággal való belépés => űrlap kitöltése => mentés gomb

## Fogalomszotar
MySQL - Egy tobbfelhasznalos, SQL-alapu relacios adatbazis-kezelo rendszer.
SQL - Structured Query Langauge - magyarul: strukturalt lekerdezonyelv - relacios adabaziis-kezelok lekerdezesi nyelve.
HTML - Hyper Text Makeup Langauge - magyarul: hiperszoveges jelolonyelv - weboldalak keszitesehez kifejlesztett leironyelv.
CSS - Cascading Style Sheets - magyarul: egymasba agyazott stilusalapok - weboldalak kullemehez kifejlesztett stiluslerio nyelv.
Front-End - Egy adott rendszer legfelsobb, a felhasznaloval kapcsolatot tarto reteg, amelynek feladata a rendszerbol kijuto adatok megjelentiese, prezentalasa, illetve a bejovo adatok fogadasa.
Back-End - Egy adott rendszer alsobb retege, aminek feladata a front-end reteg felol erkezo adatok feldolgozasa, valamint a keletkezett eredmenyek front-end szmara torteno visszajuttatasa.

## Kovetelmenylista
Jogosultsag - Bejelentkezesi felulet - Jelenlegi terv szerint csak Adminnak kell bejelentkeznie
Jogosultsag - Jogosultsagi szintek - Admin: A rendszer egeszehez hozzafer, barmikor modosithat, hozza adhat vagy torolhet kiallitassal kapcsoaltos dolgokat.
Felulet - A kiallitasok kepileges megjelenitese es leirasa
Jogosultsag - Admin felulet - Csak az admin fiokkal rendelkezo szemelyek ferhetnek hozza

## Rendszerre vonatkozó szabványok, törvények, pályázatok
A múzeum weboldala a jogszabályok szerint fog elkészülni, szerzői joga a készítőket illeti, állami pályázatokra nem jogosult, a weboldal a természetes szabvány szerint íródik, HTML, PHP kódban, fotók számára PNG-t használ, stíluslapja CSS.

## Rendszerre vonatkozó szabályok
A weboldalt a jelenlegi helyzet szerint, minden tag a saját projektrészét köteles elkészíteni, figyelembe véve a projektben dolgozó társai munkáját, a követelménylista és az egyéb pontok szerint hiánytalanul, hogy az igénylő tökéletes terméket kaphasson.

## Jelenlegi Helyzet
A Trio weboldalkészítő csoport megunta hogy annyi igénytelen és rossz minőségű weboldal készül a múzeumokhoz. 
Így hát arra az elhatározásra jutottunk hogy változtatunk ezen a helyzeten.
A csapat egy bár frissen alakult csapat viszont tettre készek vagyunk. 
A Jelenlegi helyzetre hivatkozva 4-en a weboldal 1-1 részét építenénk meg amellyel a munka felosztására a kevesebb
teher és több szabad idő és kevesebb stressz okozása a célunk.

## Vágyálom rendszer
A weboldal célja egy könnyen átlátható de szép és igényesen kialakított rendes frontenddel és backenddel valamint
egy az adminok vagy rendszerkarbantartók részére elkészített adatbázissal (My sql) el rendelkezik.
Az oldal futási időben képes a múzeum kiállítási tárgyait kategóriákba sorolni amellyel leegyszerűsíti 
a kívánt tárgy megkeresési idejét. Az egyes tárgyakról részletes leírás is található többek között az is hogy 
a múzeumon belül melyik teremben található az adott tárgy. Az oldal alján pedig a múzeum elérhetőségeit nyitvatartási
idejét lehet majd megtalálni.
