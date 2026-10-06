BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Adopters" (
	"adopter_id"	INTEGER,
	"adopter_name"	TEXT NOT NULL,
	"phone"	TEXT,
	"email"	TEXT,
	"address"	TEXT,
	PRIMARY KEY("adopter_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Adoption_Requests" (
	"request_id"	INTEGER,
	"animal_id"	INTEGER NOT NULL,
	"adopter_id"	INTEGER NOT NULL,
	"request_date"	TEXT,
	"adoption_status"	TEXT DEFAULT 'Pending',
	PRIMARY KEY("request_id" AUTOINCREMENT),
	FOREIGN KEY("adopter_id") REFERENCES "Adopters"("adopter_id"),
	FOREIGN KEY("animal_id") REFERENCES "Animals"("animal_id")
);
CREATE TABLE IF NOT EXISTS "Animal_Types" (
	"type_id"	INTEGER,
	"type_name"	TEXT NOT NULL UNIQUE,
	PRIMARY KEY("type_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Animals" (
	"animal_id"	INTEGER,
	"animal_name"	TEXT,
	"type_id"	INTEGER NOT NULL,
	"breed"	TEXT,
	"gender"	TEXT,
	"age"	INTEGER,
	"health_status"	TEXT,
	"rescue_date"	TEXT,
	"shelter_id"	INTEGER,
	"adoption_status"	TEXT DEFAULT 'Available',
	PRIMARY KEY("animal_id" AUTOINCREMENT),
	FOREIGN KEY("shelter_id") REFERENCES "Shelters"("shelter_id"),
	FOREIGN KEY("type_id") REFERENCES "Animal_Types"("type_id")
);
CREATE TABLE IF NOT EXISTS "Medical_Records" (
	"medical_id"	INTEGER,
	"animal_id"	INTEGER NOT NULL,
	"treatment_date"	TEXT,
	"diagnosis"	TEXT,
	"treatment"	TEXT,
	"veterinarian"	TEXT,
	"medical_status"	TEXT,
	PRIMARY KEY("medical_id" AUTOINCREMENT),
	FOREIGN KEY("animal_id") REFERENCES "Animals"("animal_id")
);
CREATE TABLE IF NOT EXISTS "Rescue_Cases" (
	"rescue_id"	INTEGER,
	"animal_id"	INTEGER NOT NULL,
	"team_id"	INTEGER,
	"rescue_location"	TEXT,
	"rescue_date"	TEXT,
	"rescue_condition"	TEXT,
	PRIMARY KEY("rescue_id" AUTOINCREMENT),
	FOREIGN KEY("animal_id") REFERENCES "Animals"("animal_id"),
	FOREIGN KEY("team_id") REFERENCES "Rescue_Team"("team_id")
);
CREATE TABLE IF NOT EXISTS "Rescue_Team" (
	"team_id"	INTEGER,
	"team_name"	TEXT NOT NULL,
	"contact_number"	TEXT,
	"specialization"	TEXT,
	PRIMARY KEY("team_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Shelters" (
	"shelter_id"	INTEGER,
	"shelter_name"	TEXT NOT NULL,
	"location"	TEXT NOT NULL,
	"capacity"	INTEGER,
	"contact_number"	TEXT,
	PRIMARY KEY("shelter_id" AUTOINCREMENT)
);
INSERT INTO "Adopters" VALUES (1,'Arun Kumar','9876001111','arun@gmail.com','Coimbatore');
INSERT INTO "Adopters" VALUES (2,'Priya S','9876002222','priya@gmail.com','Chennai');
INSERT INTO "Adopters" VALUES (3,'Karthik R','9876003333','karthik@gmail.com','Madurai');
INSERT INTO "Adopters" VALUES (4,'Divya M','9876004444','divya@gmail.com','Coimbatore');
INSERT INTO "Adoption_Requests" VALUES (1,4,1,'2026-09-20','Approved');
INSERT INTO "Adoption_Requests" VALUES (2,8,2,'2026-09-21','Approved');
INSERT INTO "Adoption_Requests" VALUES (3,1,3,'2026-09-22','Approved');
INSERT INTO "Adoption_Requests" VALUES (4,5,4,'2026-09-23','Pending');
INSERT INTO "Animal_Types" VALUES (1,'Dog');
INSERT INTO "Animal_Types" VALUES (2,'Cat');
INSERT INTO "Animal_Types" VALUES (3,'Bird');
INSERT INTO "Animal_Types" VALUES (4,'Rabbit');
INSERT INTO "Animals" VALUES (1,'Bruno',1,'Labrador','Male',3,'Healthy','2026-09-01',1,'Adopted');
INSERT INTO "Animals" VALUES (2,'Milo',2,'Persian Cat','Male',2,'Under Treatment','2026-09-03',1,'Available');
INSERT INTO "Animals" VALUES (3,'Coco',3,'Parrot','Female',1,'Healthy','2026-09-05',3,'Available');
INSERT INTO "Animals" VALUES (4,'Rocky',1,'Indie Dog','Male',4,'Healthy','2026-09-07',2,'Adopted');
INSERT INTO "Animals" VALUES (5,'Luna',2,'Siamese Cat','Female',2,'Healthy','2026-09-09',2,'Available');
INSERT INTO "Animals" VALUES (6,'Max',1,'Beagle','Male',5,'Under Treatment','2026-09-11',1,'Available');
INSERT INTO "Animals" VALUES (7,'Snowy',4,'White Rabbit','Female',1,'Healthy','2026-09-12',3,'Available');
INSERT INTO "Animals" VALUES (8,'Bella',1,'Golden Retriever','Female',3,'Healthy','2026-09-15',1,'Adopted');
INSERT INTO "Medical_Records" VALUES (1,1,'2026-09-01','Leg Injury','First Aid and Medication','Dr. Kumar','Recovered');
INSERT INTO "Medical_Records" VALUES (2,2,'2026-09-03','Weakness','Nutrition and Medication','Dr. Priya','Under Treatment');
INSERT INTO "Medical_Records" VALUES (3,3,'2026-09-05','Wing Injury','Wing Bandage','Dr. Arun','Recovered');
INSERT INTO "Medical_Records" VALUES (4,4,'2026-09-07','No Major Injury','Health Checkup','Dr. Kumar','Healthy');
INSERT INTO "Medical_Records" VALUES (5,5,'2026-09-09','Dehydration','Fluids and Nutrition','Dr. Priya','Recovered');
INSERT INTO "Medical_Records" VALUES (6,6,'2026-09-11','Skin Injury','Medication','Dr. Arun','Under Treatment');
INSERT INTO "Rescue_Cases" VALUES (1,1,1,'Gandhipuram','2026-09-01','Injured');
INSERT INTO "Rescue_Cases" VALUES (2,2,2,'RS Puram','2026-09-03','Weak');
INSERT INTO "Rescue_Cases" VALUES (3,3,3,'Saibaba Colony','2026-09-05','Wing Injury');
INSERT INTO "Rescue_Cases" VALUES (4,4,1,'Peelamedu','2026-09-07','Healthy');
INSERT INTO "Rescue_Cases" VALUES (5,5,2,'Chennai Central','2026-09-09','Abandoned');
INSERT INTO "Rescue_Cases" VALUES (6,6,1,'Ukkadam','2026-09-11','Injured');
INSERT INTO "Rescue_Cases" VALUES (7,7,3,'Madurai Main Road','2026-09-12','Abandoned');
INSERT INTO "Rescue_Cases" VALUES (8,8,1,'Singanallur','2026-09-15','Abandoned');
INSERT INTO "Rescue_Team" VALUES (1,'Paws Rescue Team','9876541111','Street Animal Rescue');
INSERT INTO "Rescue_Team" VALUES (2,'Hope Animal Team','9876542222','Emergency Rescue');
INSERT INTO "Rescue_Team" VALUES (3,'Care Rescue Team','9876543333','Bird Rescue');
INSERT INTO "Shelters" VALUES (1,'Happy Paws Shelter','Coimbatore',50,'9876543210');
INSERT INTO "Shelters" VALUES (2,'Safe Haven Animal Care','Chennai',40,'9876501234');
INSERT INTO "Shelters" VALUES (3,'Green Valley Shelter','Madurai',35,'9865432109');
CREATE VIEW Available_Animals AS
SELECT
    a.animal_id,
    a.animal_name,
    t.type_name,
    a.breed,
    a.gender,
    a.age,
    s.shelter_name,
    s.location
FROM Animals a
JOIN Animal_Types t
ON a.type_id = t.type_id
JOIN Shelters s
ON a.shelter_id = s.shelter_id
WHERE a.adoption_status = 'Available';
CREATE TRIGGER update_animal_after_adoption
AFTER UPDATE OF adoption_status
ON Adoption_Requests
FOR EACH ROW
WHEN NEW.adoption_status = 'Approved'
     AND OLD.adoption_status <> 'Approved'
BEGIN
    UPDATE Animals
    SET adoption_status = 'Adopted'
    WHERE animal_id = NEW.animal_id;
END;
COMMIT;
