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