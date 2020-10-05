# Funkcionális specifikáció

## 1. Áttekintés
Egy múzeum felhasználói szemszögből való áttekintéséhez szükséges weboldalt fogunk készíteni. Célunk, hogy az érdeklődők látogatás nélkül is rálátást kapjanak az intézményről, illetve az ott található tárgyakról.
A tárgyakhoz adottak lesznek különböző adatok, pl származási  helyek, beszerzés ideje, érték.
Lehetőség lesz kilistázással megtekinteni az ott látható tárgyakat képeken, termenként csoportosítva. A felhasználók lapozással fognak tudni keresni a tárgyak közt. A weboldal tartalmazni fog egy térképet az intézmény belsejéről, hogy az oda látogatók el tudjanak igazodni a látogatás során. Ez a térkép igény esetén nyomtatható lesz. A felület biztosítani fogja a felhasználók számára a múzeum elérhetőségeit, legyen az földrajzi hely, vagy telefonos, e-mailes elérhetőségek. Számítógépről, és telefonról is optimalizált felület lesz, mindenhonnan látogatható lesz a webhely, és mindenki számára elérhető lesz.

## 2. Jelenlegi helyzet
A múzeum szeretne egy weboldalt társítani az intézményéhez, hogy az oda látogatók elutazás nélkül is rálátást kapjanak a bent található dolgokra. Olyan weboldalt kért, amiben láthatóak az általuk kiállított darabok és alapvető részletek hozzájuk, valamint kérte, hogy térképet és elérhetőséget is biztosítsunk hozzá. A weboldal segíti azokat, akik távol laknak az intézménytől, és szeretnének meggyőződni arról, hogy valóban érdekli-e őket a múzeum témája, odalátogatás nélkül. A felületnek elérhetőnek kell lenni minden napi szinten használt eszközről, pl. Android/iOS rendszerek, Windows rendszer. Fontosnak tartják, hogy a mai világban, ha elérhetőek az információs rendszerek, minél több felületről elérhetőek legyenek, valamint amint lehetőség engedi tájékozódást kapjanak a hely részleteiről. Megkaptuk tehát a feladatot, hogy létrehozzunk egy ilyen felületet.

## 3. Követelménylista
F1 – Fő lista – 1.0 – Kilistázza a múzeumban található tárgyakat
F2 – Csoportosítás – 1.0 – Csoportosítható tárgyak termek/múzeumrészek szerint
F3 – Részletezés – 1.0 – Tárgyak tulajdonságainak részletezése (pl. érték/beszerzési év/típus
T1 – Térkép – 1.0 – Térkép a múzeum belső részéhez, hogy segítse az eligazodásban az ide látogatókat
E1 – Elérhetőségek – 1.0 – Tartalmazza a múzeum földrajzi helyét, különböző elérhetőségeit


## 4. Vágyálomrendszer

A készülő weboldal célja, hogy az alapvető információkon kívül (nyitvatartás, elérhetőségek, megközelítés, jegyárak, kedvezmények, nyitva tartás, általános információk stb.) betekintést engedjen a múzeum híres és változatos gyűjteményébe, nagyobb kedvet csináljon ezáltal az embereknek a személyes látogatásra. Ma az efféle információk átadása prospektusok helyett egyre inkább az interneten történik, ezért fontos, hogy az adott múzeumnak legyen egy információgazdag, felhasználóbarát, reszponzív weboldala. A hagyományos, kézzel fogható vendégkönyv helyett a múzeum itt biztosítja ugyanezt a lehetőséget a felhasználók számára. Továbbá 1-től 5-ig terjedő skálán pontozhatják a kiállítás darabjait, mely alapján más látogatók megtudhatják, melyek a legkedveltebb látványosságok. A főoldalon egy rövid bemutatkozó szöveg lesz látható, az alapvető információk, funkciók és a kategóriák a menüből lesznek elérhetők.

## 5. Jelenlegi üzleti folyamatok modellje
Manapság már nem újdonság, hogy minden múzeum jelen van az interneten, saját honlappal rendelkezik, azonban nem mindenhol mondható el, hogy ezek a honlapok megfelelő mennyiségű és minőségű információt szolgáltatnak az adott intézményben található kiálltásról. Sokan tartanak tőle, hogy ha a tárgyak az interneten is megtekinthetőek, és elérhetőek róluk a legérdekesebb adatok, akkor az embereknek már nem lesz kedvük ellátogatni és megnézni azokat személyesen is, vagy már nem lesz szükségük megvásárolni a róluk szóló kiadványokat, őket ábrázoló képeslapokat az ajándékboltban. Pedig a gyakorlati tapasztalatok ennek az ellenkezőjét mutatják: a honlapon megjelenő, látványos képek és pár érdekes adat minden kiállított tárgyról arra ösztönzi az embereket, hogy ezeket közelebbről is láthassák, és a szuvenírek eladására is kedvezően hat.

## 6. Igényelt üzleti folyamatok modellje

A célunk, hogy a mi múzeumonknak legyen egy olyan honlapja, ahol az alapvető információkon kívül jobban megismerkedhetnek a kiállítással, egyfajta betekintést nyerhetnek abba, hogy látogatásukkor mi mindent nézhetnek meg testközelből. Az itt fellelhető tárgyakat külön kategóriákba rendezve (festmények, szobrok, műkincsek, fosszíliák stb.) találják meg. Az oldal színvilága, a képek, az érdekes adatok mind arra ösztönzik majd az olvasókat, hogy ellátogassanak személyesen is intézményünkbe, és még több érdekességet tudhassanak meg ezekről. Az oldal továbbá ezzel közvetlenül és közvetve is kedvet csinál az embereknek a szuvenírek vásárlására az ajándékboltból. Ha minden múzeum közvetlenebbé válna, és jobban bemutatná a szolgáltatásait, a döntésképtelen emberek is könnyebben tudnának választani, melyik intézményt látogassák meg.

## 7. Használati esetek

Két felhasználói szerepkör atrtozik az oldalhoz: user és admin. A user bejelentkezhet, értékelheti 1-től 5-ig terjedő pontozással az egyes kategóriákban a kiállítási tárgyakat, és írhat megjegyzést az online vendégkönyvbe. Az adminok töltik fel és frissítik a kiállítási tárgyak adatait, és ellenőrzik a vendégkönyv bejegyzéseit, törölhetik, módosthatják azokat, szükség esetén letilthatják a felhasználót,  továbbá átállíthatják a felhasználók státuszát (admin/user). 3 adminunk lesz, a csapat 3 tagja egyforma jogosultságokkal, újabb admint csak meglévő user státuszának módosításával lehet felvenni. Az újonnan regisztráltak csak user státuszúak lehetnek.

## 8. Képernyő tervek

https://imgur.com/wHNgvH0

## 9. Forgatókönyv

A Weboldal meglátogatásakor először is a Home Page jelenik meg amelyik a kiállítások időpontjait, látogatási határidejét,a múzeum jegy árát  és figyelem felkeltő képeket tartalmaz.Ezután a felhasználó kiválaszthat egy általa kiválasztott kiállítást majd a lenyíló lista segítségével kiválaszthatja hogy melyik kiállítási tárgyról akar bővebb információkat megtudni.Innen van lehetősége a felhasználónak hogy újabb és újabb kiállítási tárgyakat nézhessen meg vagy esetleg visszatérjen a Home page-re hogy még egyszer megbizonyosodhasson a Múzeum elhelyezkedéséről vagy egyéb információkat tudhasson meg esetleg felvegye az ügyfél szolgálattal a kapcsolatot.

## 10. Funkció - követelmény megfeleltetés

Main Page: A main page feladata hogy amikor megnyomják a múzeum kezdőlapjára dobja vissza a felhasználót.
Lenyíló lista: A lenyíló lista felhasználásával a felhasználók számára könyebben elérhetőbb és egyszerűbben átlátható kezelhetőségre a
múzeum jelenleg kiállítot kiállítási tárgyait sorolja fel amivel a felhasználó megnézheti az adott kiállítási tárgy adatait.
Következő kiállítás: A felhasználó múzeum következő kiállítási tárgyairól való információ közlésére szolgáló menüpont amit támogat a lenyíló lista.
Jelenlegi kiállítás: A felhasználó múzeum jelenlegi kiállítási tárgyairól való információ közlésére szolgáló menüpont amit támogat a lenyíló lista.
A múzeum folytonos kiállítási tárgyai: A felhasználó múzeum folytonos kiállítási tárgyairól való információ közlésére szolgáló menüpont amit támogat a lenyíló lista.
Kiállítási kép: Az adott kiállítási tárgyhoz megfelelő képet mutatja.
Kiállítási tárgy neve: Az adott kiállítási tárgyhoz megfelelő nevet mutatja.
Kiállítási tárgyról leírás: Az adott kiállítási tárgyhoz megfelelő információkat tartalmazza.(Év számok,melyik uralkodóhoz vagy híresebb személyhez kötődik)
Kiállítási tárgy megtekintési helye: A Múzeum térképével ellátott ábra amely a jelenleg megnyitott kiállítási tárgy a múzeumban megfelelő elhelyezkedési helyét mutatja.

## 11. Fogalomszótár

A reszponzív weboldal: A reszponzív weboldal (RWD) egy olyan megközelítéssel tervezett weboldal, amelynek a célja az, hogy optimális megjelenést biztosítson - könnyű olvashatóság, egyszerű navigáció a lehető legkevesebb átméretezéssel és görgetéssel - a legkülönfélébb eszközökön (az asztali számítógép monitorjától egészen a mobiltelefonokig).
Progressive enhancement: A lényeg az, hogy a szöveges vagy képi tartalmi részekből minden látogató ugyanazt kapja, de mindenkinek úgy tálaljuk azt, ahogy azt a körülmények megengedik. Nevezhetnénk Content First szemléletnek is, mert lényegében arról van szó, hogy minden más weboldalelem a tartalomnak van alárendelve. Ez fontos, hiszen a weboldalak elsősorban információátadás céljából készülnek. A látványos részek háttérbe szorulnak, illetve csak akkor kerülnek képbe, ha az adott eszköz, illetve elérhető internetsebesség mellett a tartalom prezentálása zökkenőmentes.
