-- instruments

INSERT INTO "instrument" ("instrument_name") VALUES
('Guitar'), 
('Piano'), 
('Trumpet'), 
('Violin'), 
('Drum Kit'), 
('Saxophone');

INSERT INTO "stock" ("type", "brand", "quantity", "instrument_id") VALUES
('String', 'StringMaster', 10, (SELECT instrument_id FROM "instrument" WHERE "instrument_name" ILIKE 'Guitar')), 
('Keyboard', 'KeyNote', 6, (SELECT instrument_id FROM "instrument" WHERE "instrument_name" ILIKE 'Piano')), 
('Brass', 'BrassCraft', 9, (SELECT instrument_id FROM "instrument" WHERE "instrument_name" ILIKE 'Trumpet')), 
('String', 'StringMaster', 7, (SELECT instrument_id FROM "instrument" WHERE "instrument_name" ILIKE 'Violin')), 
('Percussion', 'PercuBeat', 10, (SELECT instrument_id FROM "instrument" WHERE "instrument_name" ILIKE 'Drum Kit')), 
('WoodWind', 'WindHarmony', 8, (SELECT instrument_id FROM "instrument" WHERE "instrument_name" ILIKE 'Saxophone'));

-- skill levels

INSERT INTO "skill_level" ("level") VALUES
('Beginner'),
('Intermediate'),
('Advanced');

-- genres
INSERT INTO "genres" ("genre_name") VALUES
('Pop'),
('Blues'),
('Country'),
('Rock'),
('Classical'),
('Jazz');

-- rooms
INSERT INTO "room" ("room_name") VALUES
('BlueBeat'), 
('RedRiff'),
('GreenGroove'),
('GoldVibe'),
('CoralCove');

-- persons
INSERT INTO "person" ("person_number", "first_name", "last_name", "email", "phone", "street", "zip", "city") VALUES
-- students
('960130-6021', 'Margareta', 'Boman', 'margareta.boman@example.com', '+46 (0)196 322 84', 'Ekgatan 326', '66590', 'Falun'),
('990115-6159', 'Karl', 'Jansson', 'karl.jansson@example.com' , '08-006 57 57', 'Skogsvägen 901', '19957', 'Malmö'),
('900116-8088', 'Lars', 'Karlsson', 'lars.karlsson@example.com' , '08-923 288 15', 'Industrigränd 95', '27528', 'Kalmar'),
('900608-6632', 'Ann-Charlotte', 'Jansson', 'ann-charlotte.jansson@example.com' , '0358-17 18 70', 'Åkervägen 88', '95689', 'Malmö'),
('050419-8086', 'Tommy', 'Karlsson', 'tommy.karlsson@example.com' , '08-923 288 15', 'Industrigränd 95', '27528', 'Kalmar'),
('860416-7497', 'Emilia', 'Pettersson', 'emilia.pettersson@example.com' , '0831-61 15 24', 'Parkstigen 02', '40270', 'Kalmar'),
('840722-8579', 'Maria', 'Forsberg', 'maria.forsberg@example.com' , '0719-22 56 57', 'Granvägen 9', '12591', 'Halmstad'),
('820310-2259', 'Christoffer', 'Karlsson', 'christoffer.karlsson@example.com' , '023-844 94 23', 'Kvarngatan 9', '92178', 'Trollhättan'),
('811114-8295', 'Birgitta', 'Svensson', 'birgitta.svensson@example.com' , '+46 (0)8 713 009 73', 'Fabriksgatan 58', '54169', 'Västerås'),
('811110-3829', 'Anna', 'Olsson', 'anna.olsson@example.com' , '0765-84 70 58', 'Parkvägen 974', '48116', 'Malmö'),
-- contact persons
('421016-3194', 'Rolf', 'Karlsson', 'rolf.karlsson@example.com' , '+46 (0)536 936 41', 'Åkervägen 11', '18180', 'Karlstad'), -- 3 & 5
('350817-3758', 'Jenny', 'Lundmark', 'jenny.lundmark@example.com' , '026-96 76 68', 'Gengränd 16', '39031', 'Södertälje'), -- 2& 4
('631220-5005', 'Michael', 'Pettersson', 'michael.pettersson@example.com' , '08-74 69 52', 'Idrottsgatan 54', '16515', 'Sandviken'), -- 6
('540206-4942', 'Olof', 'Larsson', 'olof.larsson@example.com' , '08-005 31 74', 'Genvägen 4', '95315', 'Lund'), -- 1
('460922-5786', 'Maria', 'Gustafsson', 'maria.gustafsson@example.com' , '08-132 690 86', 'Villavägen 9', '57322', 'Stockholm'), --7
('570706-6485', 'Sven', 'Holmqvist', 'sven.holmqvist@example.com' , '+46 (0)8 807 341 82', 'Idrottsvägen 682', '67513', 'Jönköping'), --8
('531213-0668', 'Filip', 'Nyström', 'filip.nyström@example.com' , '+46 (0)06 62 49 16', 'Parkstigen 17', '71009', 'Östersund'), -- 9
('600202-8535', 'Anna', 'Johansson', 'anna.johansson@example.com' , '066-915 29 36', 'Gengatan 3', '33455', 'Luleå'), -- 10
-- instructors
('790415-6887', 'Linnéa', 'Karlsson', 'linnéa.karlsson@example.com' , '+46 (0)283 382 91', 'Idrottsgatan 27', '49447', 'Lidköping'),
('810318-0504', 'Anneli', 'Wallin', 'anneli.wallin@example.com' , '08-46 63 51', 'Gengränd 388', '52208', 'Karlstad');


INSERT INTO "student" ("person_id", "has_sibling") VALUES
(1, false),
(2, true),
(3, true),
(4, true),
(5, true),
(6, false),
(7, false),
(8, false),
(9, false),
(10, false);

INSERT INTO "sibling" ("sibling_id", "student_id") VALUES
(2,4),
(4,2),
(3,5),
(5,3);

INSERT INTO "contact_person" ("student_id", "relationship", "person_id") VALUES
(3,'Father', 11),
(5,'Father', 11),
(2,'Grand Mother', 12),
(4,'Grand Mother', 12),
(6,'Mother',13),
(1,'Uncle',14),
(7,'Mother',15),
(8,'Uncle',16),
(9,'Father',17),
(10,'Mother',18);

INSERT INTO "instructor" ("employment_id", "can_teach_ensembles", "person_id") VALUES
('EMP12345', true, 19),
('EMP67890', false, 20);

-- lease contract

INSERT INTO "lease_contract" ("student_id", "instrument_id", "start_date", "end_date", "rental_fee") VALUES
(1, (SELECT instrument_id FROM "instrument" WHERE "instrument_name" ILIKE 'Guitar'), '2023-11-23 10:40:22', '2024-11-23 10:40:22', 250),
(5, (SELECT instrument_id FROM "instrument" WHERE "instrument_name" ILIKE 'Piano'), '2023-10-23 10:40:22', '2024-10-23 10:40:22', 300),
(5, (SELECT instrument_id FROM "instrument" WHERE "instrument_name" ILIKE 'Violin'), '2023-11-23 11:15:09', '2024-11-23 11:15:09', 200);

INSERT INTO "leas_policy" ("contract_id", "rental_limit", "rental_period") VALUES
(1, '2', '12'),
(2,'2', '12'),
(3, '2', '12');

-- instructor's known instruments

INSERT INTO "known_instrument" ("instructor_id", "instrument_id") VALUES
(19,(SELECT instrument_id FROM "instrument" WHERE "instrument_name" ILIKE 'Guitar')),
(19,(SELECT instrument_id FROM "instrument" WHERE "instrument_name" ILIKE 'Violin')),
(19,(SELECT instrument_id FROM "instrument" WHERE "instrument_name" ILIKE 'Piano')),
(20,(SELECT instrument_id FROM "instrument" WHERE "instrument_name" ILIKE 'Trumpet')),
(20,(SELECT instrument_id FROM "instrument" WHERE "instrument_name" ILIKE 'Drum Kit')),
(20,(SELECT instrument_id FROM "instrument" WHERE "instrument_name" ILIKE 'Saxophone'));

-- lessons

INSERT INTO "lesson" ("start_time", "end_time", "instructor_id", "skill_level_id", "room_id") VALUES
('2023-11-27 10:00:00', '2023-11-27 11:30:00', 20, 1, 3),
('2023-11-30 13:00:00', '2023-11-30 14:30:00', 20, 1, 5),

('2023-11-28 15:00:00', '2023-11-28 16:30:00', 19, 1, 1),
('2023-11-28 17:00:00', '2023-11-28 18:30:00', 19, 2, 2),
('2023-11-29 10:00:00', '2023-11-29 11:30:00', 19, 3, 4);

INSERT INTO "individual_lesson" ("lesson_id", "student_id", "instrument_id") VALUES
(1, 1, (SELECT instrument_id FROM "instrument" WHERE "instrument_name" ILIKE 'Guitar')),
(2, 6, (SELECT instrument_id FROM "instrument" WHERE "instrument_name" ILIKE 'Saxophone'));

INSERT INTO "group_lesson" ("lesson_id", "min_students", "max_students", "instrument_id") VALUES
(3, 3, 5, (SELECT instrument_id FROM "instrument" WHERE "instrument_name" ILIKE 'Piano')),
(4, 3, 5, (SELECT instrument_id FROM "instrument" WHERE "instrument_name" ILIKE 'Guitar'));

INSERT INTO "ensembles" ("lesson_id", "min_students", "max_students", "genre_id") VALUES
(5, 6, 10, (SELECT genre_id FROM "genre" WHERE "genre_name" ILIKE 'Jazz'));


-- lesson booking
INSERT INTO "lesson_booking" ("student_id", "lesson_id") VALUES
(1,1),
(6,2),
(7,3),
(5,3),
(2,3),
(4,5),
(9,5),
(10,5);

-- price scheme
INSERT INTO "price_scheme" ("lesson_id", "skill_level_id", "price", "valid_from", "valid_to", "discount_rate") VALUES
(1, 1, 199.98, '2023-01-01', '2023-12-31', 15),
(2, 1, 199.98, '2023-01-01', '2023-12-31', 15),
(3, 1, 199.98, '2023-01-01', '2023-12-31', 15),
(4, 2, 199.98, '2023-01-01', '2023-12-31', 15),
(5, 3, 250.00, '2023-01-01', '2023-12-31', 15),
