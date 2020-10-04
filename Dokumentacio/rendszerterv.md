# Rendszerterv

## Üzleti folyamatok modellje
A gyakorlati tapasztalat azt mutatja, hogy ha a kiállításról, annak minden egyes darabjáról bárki számára elérhető információkat biztosítunk, akkor az nem veszi el az emberek kedvét a múzeumlátogatástól, hanem éppen ellenkezőleg, ösztönzi őket, hogy személyesen megnézzék. Reklámmentes weboldalt biztosítunk a látogatók számára. Célunk a tájékoztatás, információk átadása. Ezzel csináljuk a legjobb reklámot a saját intézmnyünknek, a célunk a jegyeladásból származó bevétel növelése elsősorban. Mindezt egy felhasználóbarát, áttekinthető és reszponzív, mai igényeknek megfelelő külsővel rendelkező weboldallal érjük el.  
**Üzleti szereplők:**
- Múzeumi dolgozók: recepciós, kiállításszervező, ajándékbolt üzletvezetője
- Felhasználók
- Látogatók
- Adminok  
**Üzleti folyamatok:**
- A látogatók elérhetik az összes menüpontot és az összes információhoz hozzáférnek, de nem tudják igénybe venni azokat a funkciókat, mint a regisztrált felhasználók.
- A regisztrált felhasználók szintén elérik az összes menüpontot, de tudnak online jegyet vásárolni, ajándéktárgyat rendelni, vendégkönyvbe írni, kiállítási tárgyakat értékelni is.
- Az adminok képesek a vendégkönyvből bejegyzéseket törölni, felhasználókat letiltani vagy adminná nyilvánítani.
- Múzeumi dolgozók: egyelőre ők is adminok (eleve ők azok), esetleg a jövőben, ha szükségessé válik, külön szerepkörré válnak.  
Megjegyzés: a weboldal első, induló változata szerepköröket és ezekhez kapcsolódó funkciókat még nem fog tartalmazni a rövid fejlesztési idő miatt, a karbantartási tervben részletezve van, mivel lehet a jövőben kiegészíteni a készülő weboldalt.

## Funkcionális terv
Rendszerszereplők: -Látogatók
-Regisztrált felhasználók
-Adminok
Rendszerhasználati esetek és lefutásaik:
ADMIN: Teljes hozzáférés a rendszerhez, vendégkönyvből bejegyzéseket tudnak törölni, felhasználókat letiltani, vagy adminná tenni
LÁTOGATÓK: Elérik a weboldal összes menüpontját, de a múzeum weben keresztül elérhető funkcióihoz nem férnek hozzá.
FELHASZNÁLÓK: Regisztráció után elérik a weboldal szolgáltatásait.
Weboldal szolgáltatásai: Online jegy vásárlás, ajándéktárgy rendelés, vendégkönyv használat, tárgy értékelés.
--
Menü hierarchia: Bejelentkezés: -Regisztráció, Bejelentkezés, Kijelentkezés
Main: Ajándéktárgyak, Kategóriák, Rendelés, Vendégkönyv, Értékelés, Elérhetőségek

## Implementációs terv
Web: A webes felület HTML, PHP, CSS nyelven készül.
Minél átláthatóbban, elkülönítettebben fogunk dolgozni, a projekt átláthatósága miatt. Adatbázishoz SQL rendszert használunk az adatbázisterv pont szerint.

## Tesztterv
A tesztelések célja a rendszer és összetevői működőképességének vizsgálata, és leellenőrzése.
TESZTELÉSI ELJÁRÁSOK:
Unit teszt: Már a kódolási szakasz alatt a szintaktikai/szemantikai hibák kiaknázása, a kód metódusai akkor vannak kész, ha az ezekre készített Unit tesztekre hibamentesen lefutnak.
Alfa teszt: A kész projekt tesztelése minden elérhető felületen, platformon, azok verziószámain, hibákat keresve, szélsőséges eseteket szimulálva, az esetleges hibák megtalálása érdekében. A tesztet a fejlesztők végzik, ideálisan mindenki a saját beosztott projektrészének megfelelően.
Beta teszt: A weboldal kiadása után publikált állapotában már nem a fejlesztők végzik, a kiadott platformok összes verzióján hibamentesen kell működnie a terméknek ennek a tesztelési fázis befejeztével.
A tesztelők visszajelzéseket küldhetnek a fejlesztőknek, ezzel kisegítve őket.
Minden backend szolgáltatásnak, bejelentkezési, rendelési, értékelési felületnek hibamentesen kell működnie minden platformon. Esetleges hibák során a felhasználót lekezelt kivételekkel kell tájékoztatni.

## Adatbázisterv

A múzeum honlapján a kiállítás darabjairól megjelenő adatok az adatbázisban szerepelnek. Az adatbázis neve: museum. 4 db kategóriába csoportosíthatók a kiállított tárgyak: festmények, szobrok, fosszíliák, tárgyi leletek. Ezekhez tartozik egy-egy tábla a saját adataikkal, és van egy generalData nevű tábla, mely minden más táblával egy az egyhez kapcsolatban áll. A másik 4 táblában minden rekordhoz tartozik egy leírás és egy kép, és hogy a mezők ismétlődését elkerüljük, ez a két adat külön táblába került. A táblák a generalDataId nevű mezőjükben tárolják az idegenkulcsot ehhez a táblához. Továbbá mindegyik tábla rendelkezik egy int típusú id mezővel, amely auto incrementre van állítva, új rekord felvétele esetén automatikus kap id-t.  A táblákat, kapcsolataikat és a mezők típusait a mellékelt ábra mutatja: 
![Adatbázis EER diagram](Abrak/database.png)

### Táblák:

**A generalData tábla mezői:**
- id
- description: rövid, max. 500 karakteres leírás az adott kiállítási tárgyról
- imageURL: a kép elérési útvonala

**A paintings tábla mezői:**
- id
- title: a festmény címe
- painter: a festő neve
- completedTime: a festmény befejezésének ideje, varchar tpusú, mert lehet olyan festmény, amelyiknél nem tudjuk pontosan, csak a korszakot ismerjük
- place: a kép keletkezésének helye (bármilyen földrajzi egység megadható, mi ismert)
- type: a festmény típusa (olajfestmény, akvarell stb.)
- subject: a kép témája (csendélet, tájkép, portré stb.)
- generalDataId

**A statues tábla mezői:**
- id
- title: a szobor címe
- sculptor: a szobrász neve
- completedTime: a szobor elkészítésének ideje, varchar tpusú, mert lehet olyan szobor, amelyiknél nem tudjuk pontosan, csak a korszakot ismerjük
- material: a szobor anyaga (bronz, márvány, fa stb.)
- weight: a szobor súlya kg-ban
- generalDataId

**A fossils tábla mezői:**
- id
- species: a maradványhoz tartozó faj neve (pl. triceratops, velociraptor stb.)
- geologicalEra: földtörténeti korszak (pl. pleisztocén, kréta stb.)
- excavationYear: az ásatás éve
- excavationPlace: az ásatás helye
- generalDataId

**Az artifacts tábla mezői:**
- id
- name: a tárgyi lelet megnevezése
- function: a tárgy funkciója (pl. fegyver, munkaeszköz stb.)
- relatedPerson: ha van ilyen, akkor olyan személy akié volt a tárgy
- material: a tárgy anyaga (pl. fa, vas, kő stb.)
- originTime: melyik korból származik
- originPlace: származási helye
- generalDataId

## Karbantartási terv
A projektre kiadott fejlesztési idő rövidsége miatt a rendszertervben kitűzött cél egy felhasználói szerepkör nélküli weboldal elkészítése volt, amely minden kiállítási tárgyat megtalálhatóvá tesz rendezett menü segítségével, illetve az elérhetőségekről és a legfontosabb adatokról tájékoztat. A jövőben a honlapnak számos funkcióval kell kiegészülnie, de elsősorban szerepkörökkel. Értelemszerűen ebből kettőre lesz szükség: adminra és felhasználóra. Az adatbázisban szerepelni fog egy előre létrehozott admin, később ez tud több admint felvenni, felhasználók admin státuszúra változtatásával. Az adminok lesznek képesek felhasználókat letiltani és bejegyzéseiket törölni a vendégkönyvől szükség esetén.  
**A jövőben kötelezően megvalósítandó funkciók:**
- A látogatók regisztrációval felhasználói fiókot hozhatnak létre user szerepkörrel
- A regisztrált felhasználók online vásárolhatnak belépőjegyet, kedvezményeket vehetnek igénybe
- A regisztrált felhasználók rendelhetnek az ajándékboltból online
- Online vendégkönyv a regisztrált felhasználók részére, melyet az adminok moderálnak
- A kiállítási tárgyakat értékelhetik a felhasználók 1-5 csillaggal tetszésük szerint, minden kategóriából a legnépszerűbb darab megjelenik a főoldalon  
**Tervezett jövőbeni fejlesztések:**
- Android mobilalkalmazás fejlesztése online jegyvásárlás és ajándéktárgyak rendelése céljából  
**Technológiai fejlesztések:**
- Szükség lesz az adatbázis-szolgáltatónál nagyobb tárhelyet igényelni az adatbázis számára
- A további bővítéséhez célszerű valamilyen keretrendszer használatát bevezetni

## A rendszer celja
A rendszer celja, hogy a muzemban eppen aktulais kiallitasrol barki informaciot szerhezzsen barhol is van a vilagon internet hozzaferessel.
A weboldal kinezete egy egyszerusitett, atgondolt es letisztult felulet lesz.
A rendszer letisztultsaga miatt barki aki minimalisan ert az internethez el tud majd igazodni az oldalon, minden fele gondok nelkul.
Mivel jelenleg csak weboldal keszul ezert sem androidos sem IOS es alkalmazas nem fog keszulni, de mivel celunk egy egyszeruen attekintheto oldal letrehozasa, ami minimalis eroforrasokat hasznal igy nincs is tervben kulon applkiacio letrehozasa.

## Fizikai kornyezet
- Az alkamlazas csakis web platfomra keszul.
- Az weboldal teljesen kezi kodolassal keszul a nullarol
- Fejlesztoi eszkozok:
    - Szoveg - es forraskodszerkesztok: Ajnalott Notepad++ vagy Visual Studio Code de mas preferalt platform hasznalata se tiltott.
    - Adatbazis: MySQL Sorkbench
    - Weboldal: HTML + CSS + JavaScript esetlegesen elofordulhat

## Kovetelmenyek / Kovetelmenylista
A rendszer fejlesztese HTML/CSS valamint esetlegesen JavaScript segitesegevel tortenik
A weboldal felepitese HTML, a stilusa CSS-sel fog megvalosulni.
A weboldal hasznalatahoz eleg lesz egy egyszeru bongeszo.

## Projekt terv
A projektet weblapra fejlesztük front- és backend segítségével. A csoport egyhangú szavazás alapján Notepad++-ban fejleszti majd a Php,CSS és HtML részeket.
Az elkülönített feladatokon más-más emberek dolgoznak és lehetőleg más más időpontokban.
Frontend fejlesztése HTML/CSS segítségével, valamint bejelentkezéshez és a kereső rendszer működéséhez php használata adatbázis kezeléséhez.
	Frontend felelősök:
	
A feladat célja, hogy a weblap könnyen kezelhető legyen a felhasználók és adminisztrátorok számára és egy olyan kinézetet biztosítsanak a weboldalnak . 
	
	Backend felelősök:

Feladatuk az adatbázishoz való csatlakozás biztosítása, illetve a benne kezelt műveletek megírása többek között a keresőrendszer megírása ami a kategóriák által
könnyíti meg az adatbázisban található kiállítási tárgyak kilistázását.Valamint gondoskodik az Adminisztrátorok segítség nélküli könnyű rendszer használatához.

## Telepítési Terv
A MySQL adatbázis létrehozásához egy külső adatbázis szolgáltató, a Heroku ingyenes szolgáltatását vesszük igénybe. Ez limitált számú kapcsolatot és csak 10 MB tárhelyet biztosít, de a múzeum méretének megfelelnek. Később, ha bővülnek a szolgáltatásaink, szükséges lesz befektetni nagyobb tárhelyért és korlátlan kapcsolatért egy másik csomagba.

## Architektúrális terv
A rendszerhez szükség van egy adatbázis szerverre, ebben az esetben MySql-t használunk. A kliens oldali programokat egy php alapú REST api szolgálja ki, ez csatlakozik az adatbázis szerverhez. A kliensekkel JSON objektumokkal kommunikál.