# Rendszerterv

## Adatbázisterv

A múzeum honlapján a kiállítás darabjairól megjelenő adatok az adatbázisban szerepelnek. Az adatbázis neve: museum. 4 db kategóriába csoportosíthatók a kiállított tárgyak: festmények, szobrok, fosszíliák, tárgyi leletek. Ezekhez tartozik egy-egy tábla a saját adataikkal, és van egy generalData nevű tábla, mely minden más táblával egy az egyhez kapcsolatban áll. A másik 4 táblában minden rekordhoz tartozik egy leírás és egy kép, és hogy a mezők ismétlődését elkerüljük, ez a két adat külön táblába került. A táblák a generalDataId nevű mezőjükben tárolják az idegenkulcsot ehhez a táblához. Továbbá mindegyik tábla rendelkezik egy int típusú id mezővel, mely auto incrementre van állítva, új rekord felvétele esetén automatikus kap id-t.  A táblákat, kapcsolataikat és a mezők típusait a mellékelt ábra mutatja: 
![Adatbázis EER diagram](Abrak/database.png)

### Táblák:

**A generalData tábla mezői:**
- id
- description: rövid, max. 500 karakteres leírás az adott
- imageURL

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
- completedTime: a szobor elkésztésének ideje, varchar tpusú, mert lehet olyan festmény, amelyiknél nem tudjuk pontosan, csak a korszakot ismerjük
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
- material: a tárgy anyaga (pl. fa, vas, kő stb.)
- originTime: melyik korból származik
- originPlace: származási helye
- generalDataId