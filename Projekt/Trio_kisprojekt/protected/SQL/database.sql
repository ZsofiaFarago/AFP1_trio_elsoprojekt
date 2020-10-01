CREATE TABLE generalData(
	id INT NOT NULL AUTO_INCREMENT,
	description VARCHAR(500) NOT NULL,
	imageUrl VARCHAR(250) NOT NULL,
	CONSTRAINT pk_generalData PRIMARY KEY (id));

CREATE TABLE paintings(
	id INT NOT NULL AUTO_INCREMENT,
	title VARCHAR(150) NOT NULL,
	painter VARCHAR(150) NOT NULL,
	completedTime VARCHAR(100) NOT NULL,
	place VARCHAR(100) NOT NULL,
	type VARCHAR(100) NOT NULL,
	subject VARCHAR(150) NOT NULL,
	generalDataId INT NOT NULL,
	CONSTRAINT pk_paintings PRIMARY KEY (id),
	CONSTRAINT fk_paintingsGeneralData FOREIGN KEY (generalDataId) REFERENCES generalData (id));

CREATE TABLE statues(
	id INT NOT NULL AUTO_INCREMENT,
	title VARCHAR(150) NOT NULL,
	sculptor VARCHAR(150) NOT NULL,
	completedTime VARCHAR(100) NOT NULL,
	place VARCHAR(100) NOT NULL,
	material VARCHAR(100) NOT NULL,
	weight INT NOT NULL,
	generalDataId INT NOT NULL,
	CONSTRAINT pk_statues PRIMARY KEY (id),
	CONSTRAINT fk_statuesGeneralData FOREIGN KEY (generalDataId) REFERENCES generalData (id));

CREATE TABLE fossils(
	id INT NOT NULL AUTO_INCREMENT,
	species VARCHAR(100) NOT NULL,
	geologicalEra VARCHAR(100) NOT NULL,
	excavationYear VARCHAR(50) NOT NULL,
	excavationPlace VARCHAR(100) NOT NULL,
	generalDataId INT NOT NULL,
	CONSTRAINT pk_fossils PRIMARY KEY (id),
	CONSTRAINT fk_fossilsGeneralData FOREIGN KEY (generalDataId) REFERENCES generalData (id));

CREATE TABLE artifacts(
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(100) NOT NULL,
	func VARCHAR(250) NOT NULL,
	relatedPerson VARCHAR(150) NOT NULL,
	material VARCHAR(100) NOT NULL,
	originTime VARCHAR(100) NOT NULL,
	originPlace VARCHAR(100) NOT NULL,
	generalDataId INT NOT NULL,
	CONSTRAINT pk_artifacts PRIMARY KEY (id),
	CONSTRAINT fk_artifactsGeneralData FOREIGN KEY (generalDataId) REFERENCES generalData (id));

CREATE TABLE admin (
	id INT NOT NULL AUTO_INCREMENT,
	username VARCHAR(50) NOT NULL,
	name VARCHAR(100) NOT NULL,
	password VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL,
	loggedIn TINYINT NOT NULL DEFAULT 0,
	CONSTRAINT pk_admin PRIMARY KEY (id));

insert into admin(username, name, password, email) values("Zsofia95", "Faragó Zsófia", "password", "farago.zsofia.1995@gmail.com");

insert into generalData(description, imageUrl) values("Úgy tartják, a festményen Giovanni di Nicolao Arnolfini itáliai kereskedő és felesége van megörökítve brugge-i otthonukban. A képet a nyugati festőművészet egyik legteljesebb és legeredetibb művének tartják. A képet 1842-ben a londoni National Gallery vásárolta meg. A festmény ábrázolása a maga korában figyelemre méltó volt, a részletek kidolgozottsága okán is, de főleg a belső teret kitöltő fény tökéletes használatával.", "arnolfini.jpg");
insert into generalData(description, imageUrl) values("Egy éjszakai tájkép csillagos égbolttal, ciprusfával, egy falu látképével, a háttérben hegyekkel. A valós és fantasztikus elemeket is magában foglaló, sokat vitatott szimbolikájú kép Vincent van Gogh legismertebb művei közé tartozik.", "csillagos_ej.jpg");
insert into generalData(description, imageUrl) values("Rembrandt azt a megtisztelő megbízást kapta, hogy fessen egy nagy, csoportos portrét egy polgárőrcsapatról. A képet ma Éjjeli őrjáratként ismerik, de eredeti címe: Frans Banning Cocq kapitány polgárőrcsapata.", "ejjeli_orjarat.jpg");

insert into paintings(title, painter, completedTime, place, type, subject, generalDataId) values("Arnolfini házaspár", "Jan van Eyck", "1434", "Németalföld", "olajfestmény", "arckép", 1);
insert into paintings(title, painter, completedTime, place, type, subject, generalDataId) values("Csillagos éj", "Vincent van Gogh", "1889. június", "Franciaország", "olajfestmény", "tájkép", 2);
insert into paintings(title, painter, completedTime, place, type, subject, generalDataId) values("Éjjeli őrjárat", "Rembrandt Harmenszoon van Rijn", "1642", "Amszterdam", "olajfestmény", "schutterstuk", 3);

insert into generalData(description, imageUrl) values("A Pokol kapuja oromzatára tervezte, és a művéről elmélkedő Dantét ábrázolja, bár önálló munkaként ismert.", "gondolkodo.jpg");
insert into generalData(description, imageUrl) values("Jean Bilheres de Lagraulas bíboros megrendelésére készült. Eredetileg a Szent Petronilla-kápolnát ékesítette. A szoborcsoport azt a jelenetet ábrázolja, amikor Mária a keresztről levett Jézust gyászolja.", "pieta.jpg");
insert into generalData(description, imageUrl) values("Egyike azon tíz szobornak, melyeket a 20. század elején I. Ferenc József adományozott a nemzetnek. II. Béla király jegyzőjét ábrázolja.", "anonymus.jpg");

insert into statues(title, sculptor, completedTime, place, material, weight, generalDataId) values("A gondolkodó", "Augeste Rodin", 1881, "Franciaország", "bronz", 141, 4);
insert into statues(title, sculptor, completedTime, place, material, weight, generalDataId) values("Pieta", "Michelangelo Buonarroti", "1499", "Itália", "márvány", 196, 5);
insert into statues(title, sculptor, completedTime, place, material, weight, generalDataId) values("Anonymus", "Ligeti Miklós", "1903", "Magyarország", "bronz", 144, 6);

insert into generalData(description, imageUrl) values("A Pokol kapuja oromzatára tervezte, és a művéről elmélkedő Dantét ábrázolja, bár önálló munkaként ismert.", "gondolkodo.jpg");
insert into generalData(description, imageUrl) values("A Pokol kapuja oromzatára tervezte, és a művéről elmélkedő Dantét ábrázolja, bár önálló munkaként ismert.", "gondolkodo.jpg");
insert into generalData(description, imageUrl) values("A Pokol kapuja oromzatára tervezte, és a művéről elmélkedő Dantét ábrázolja, bár önálló munkaként ismert.", "gondolkodo.jpg");

insert into generalData(description, imageUrl) values("Testének az egész külalakja emlékeztet a madarakéra, a csigolyák és végtagcsontok léggel teltek, a koponya pedig hosszú, hegyes csőrben végződik, és derékszöget zár be a nyakkal, miként a madaraké.", "pterodactylus.jpg");
insert into generalData(description, imageUrl) values("A közepes méretű dromaeosauridák közé tartozó Velociraptor felnőtt példányai nagyjából 2,07 méter hosszúak és 0,5 méter magasak voltak, tömegük 15–19,7 kilogramm lehetett.", "velociraptor.jpg");
insert into generalData(description, imageUrl) values("A Spinosaurus egyedi „tüskéi” a csigolyák hosszú nyúlványai. 1,65 méter hosszúra nőttek, és valószínűleg bőr fedte és kötötte össze őket, ami egy vitorlaszerű szerkezetet alkotott.", "spinosaurus.jpg");

insert into fossils(species, geologicalEra, excavationYear, excavationPlace, generalDataId) values("Pterodactylus", "késő jura kor", "1784", "Bajorország", 7);
insert into fossils(species, geologicalEra, excavationYear, excavationPlace, generalDataId) values("Velociraptor", "késő kréta kor vége", "1922", "Góbi-sivatag", 8);
insert into fossils(species, geologicalEra, excavationYear, excavationPlace, generalDataId) values("Spinosaurus", "kora kréta kor", "1912", "Szahara", 9);

insert into generalData(description, imageUrl) values("Ezt a türkiz mozaikkal kirakott tőrt azték főpapok használták áldozat bemutatására az eső istenének, Tlalocnak.", "aldozati_tor.png");
insert into generalData(description, imageUrl) values("A maszk hátoldalán és a vállaknál védővarázslat van belevésve a maszkba.", "tutankhamun.jpg");
insert into generalData(description, imageUrl) values("A gazdagon díszített markolat és a mintával hegesztett penge azt jelzi, hogy ezt a kardot egy magas rangú harcos, esetleg egy viking vezér vagy egy frank nemes viselte.", "viking_kard.png");

insert into artifacts(name, func, relatedPerson, material, originTime, originPlace, generalDataId) values("Áldozati tőr", "áldozatok bemutatása", "ismeretlen azték főpap", "kovakő, fa, kagylóhéj", "1400-1521", "Mexikó", 10);
insert into artifacts(name, func, relatedPerson, material, originTime, originPlace, generalDataId) values("Tutankhamun halotti maszkja", "halotti maszk", "Tutankhamun", "arany", "Kr. e. 1323", "Királyok Völgye", 11);
insert into artifacts(name, func, relatedPerson, material, originTime, originPlace, generalDataId) values("Viking kard", "fegyver", "ismeretlen viking harcos", "acél", "10. század", "Skandinávia", 12);