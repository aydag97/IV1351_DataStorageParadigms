-- instruments

INSERT INTO "instrument" ("instrument_name") VALUES
('Guitar'), 
('Piano'), 
('Violin'), 
('Drums'), 
('Trumpet'), 
('Flute'),
('Clarinet');

INSERT INTO "stock" ("instrument_id", "type", "brand", "quantity", "cost" ) VALUES
(1, 'String', 'StringMaster', 50, 150), 
(2, 'Keyboard', 'KeyNote', 35, 200), 
(3, 'String', 'StringMaster', 40, 150),
(4, 'Percussion', 'PercuBeat', 24, 200), 
(5, 'Brass', 'BrassCraft', 60, 160), 
(6, 'WoodWind', 'WindHarmony', 86, 110),
(7, 'WoodWind', 'WindHarmony', 62, 160);

-- skill levels

INSERT INTO "skill_level" ("level") VALUES
('Beginner'),
('Intermediate'),
('Advanced');

-- genres
INSERT INTO "genre" ("genre_name") VALUES
('Pop'),
('Blues'),
('Country'),
('Rock'),
('Classical'),
('Jazz');

-- lesson types

INSERT INTO "lesson_type" ("type") VALUES
('Individual'),
('Group'),
('Ensemble');

-- rooms
INSERT INTO "room" ("room_name") VALUES
('BlueBeat'), 
('RedRiff'),
('GreenGroove'),
('GoldVibe'),
('CoralCove'),
('PinkNote'),
('SilverSonic'),
('YellowEcho'),
('CooperChord'),
('MintMelody');

-- persons
INSERT INTO "person" ("person_number", "first_name", "last_name", "email", "phone", "street", "zip", "city") VALUES
-- students
('060401-4845', 'Hans', 'Holmqvist', 'hans.holm@example.com', '+46 (0)8 741 737 88', 'Parkgatan 439', '30656', 'Lidköping'),
('110908-2311', 'Niklas', 'Gustafsson', 'niklas.gustafsson@example.com', '08-700 08 63', 'Grangatan 475', '90204', 'Uddevalla'),
('010201-1897', 'Erik', 'Johansson', 'erik.johan@example.com', '+46 (0)8 066 462 60', 'Nyvägen 49', '98815', 'Trelleborg'),
('990805-8895', 'Karl', 'Larsson', 'karl.larsson@example.com', '076-51 74 41', 'Åkergatan 926', '36502', 'Borås'),
('991110-2458', 'Hillevi', 'Lundberg', 'hillevi.lundberg@example.com', '0745-01 62 92', 'Skogsgatan 08', '54349', 'Uddevalla'),
('130520-2895', 'Andreas', 'Johansson', 'andreas.johansson@example.com', '039-43 16 19', 'Stationsstigen 2', '91970', 'Sundsvall'),
('090209-0216', 'Margareta', 'Melin', 'margareta.melin@example.com', '08-427 814 80', 'Stationsvägen 77', '65364', 'Göteborg'),
('020317-2150', 'Gunvor', 'Johannesson', 'gunvor.johannesson@example.com', '+46 (0)72 34 80 80', 'Kvarntorget 690', '68725', 'Trollhättan'),
('100509-8551', 'Birgit', 'Gustafsson', 'birgit.gustafsson@example.com', '08-160 97 38', 'Björkstigen 15', '81367', 'Sundsvall'),
('100630-7233', 'Siv', 'Karlsson', 'siv.karlsson@example.com', '+46 (0)070 428 27', 'Ringstigen 08', '74024', 'Eskilstuna'),
('090522-5660', 'Olof', 'Lindgren', 'olof.lindgren@example.com', '+46 (0)825 650 62', 'Kyrkogatan 3', '85269', 'Ängelholm'),
('971108-4013', 'Lars', 'Fransson', 'lars.fransson@example.com', '+46 (0)707 776 20', 'Kvarntorget 189', '45179', 'Luleå'),
('120919-9973', 'Kristina', 'Larsson', 'kristina.larsson@example.com', '+46 (0)8 128 328 96', 'Grangränd 225', '57055', 'Örnsköldsvik'),
('960222-0916', 'Greta', 'Jonsson', 'greta.jonsson@example.com', '+46 (0)8 593 371 50', 'Skolgatan 115', '12725', 'Eskilstuna'),
('090505-8392', 'Victor', 'Andersson', 'victor.andersson@example.com', '+46 (0)107 165 32', 'Bäckvägen 153', '32502', 'Kristianstad'),
('931217-9865', 'Linnéa', 'Bergström', 'linnéa.bergström@example.com', '089-571 46 86', 'Industrigatan 48', '19884', 'Alingsås'),
('960730-9730', 'Marianne', 'Bengtsson', 'marianne.bengtsson@example.com', '+46 (0)75 12 46 34', 'Järnvägsstigen 800', '37616', 'Ängelholm'),
('960910-8585', 'Olof', 'Pettersson', 'olof.pettersson@example.com', '+46 (0)8 286 463 85', 'Skolvägen 2', '95823', 'Trollhättan'),
('110630-0591', 'Tage', 'Nilsson', 'tage.nilsson@example.com', '005-759 41 97', 'Industrigatan 0', '54918', 'Lidköping'),
('950216-9700', 'Cecilia', 'Karlsson', 'cecilia.karlsson@example.com', '0680-349 96', 'Storgränd 42', '39307', 'Kalmar'),
('970331-7652', 'Erika', 'Persson', 'erika.persson@example.com', '+46 (0)996 944 71', 'Skolvägen 269', '21646', 'Motala'),
('960712-0731', 'Lena', 'Svensson', 'lena.svensson@example.com', '0602-298 53', 'Kyrkvägen 5', '25154', 'Umeå'),
('020524-1359', 'Bo', 'Henriksson', 'bo.henriksson@example.com', '026-17 02 52', 'Storvägen 5', '22893', 'Varberg'),
('090609-3919', 'Karl', 'Svensson', 'karl.svensson@example.com', '08-197 937 99', 'Aspvägen 472', '50103', 'Varberg'),
('090718-6324', 'Elsa', 'Johansson', 'elsa.johansson@example.com', '0126-13 37 63', 'Stationsgränd 718', '45324', 'Varberg'),
('080913-4232', 'Elisabeth', 'Wallin', 'elisabeth.wallin@example.com', '08-856 078 93', 'Trädgårdsvägen 225', '90570', 'Luleå'),
('991117-7815', 'Jennie', 'Sandström', 'jennie.sandström@example.com', '08-569 96 43', 'Furugatan 287', '31035', 'Östersund'),
('080521-7114', 'Jennie', 'Persson', 'jennie.persson@example.com', '004-732 31 10', 'Parkvägen 962', '89911', 'Västerås'),
('090501-7653', 'Anita', 'Lundberg', 'anita.lundberg@example.com', '+46 (0)232 033 70', 'Idrottsgränd 782', '93885', 'Karlstad'),
('010205-8047', 'Jonas', 'Ottosson', 'jonas.ottosson@example.com', '08-589 687 78', 'Genvägen 0', '81551', 'Karlskoga'),
('950226-8189', 'Göran', 'Lundberg', 'göran.lundberg@example.com', '08-01 43 19', 'Järnvägsgatan 223', '94134', 'Umeå'),
('980401-4521', 'Tomas', 'Alm', 'tomas.alm@example.com', '+46 (0)8 589 216 37', 'Strandgatan 09', '27034', 'Luleå'),
('081105-0632', 'Malin', 'Pettersson', 'malin.pettersson@example.com', '020-508 79 50', 'Parkgatan 6', '24905', 'Örebro'),
('080919-9565', 'Josef', 'Eriksson', 'josef.eriksson@example.com', '08-840 18 21', 'Parkvägen 9', '23297', 'Uddevalla'),
('110831-5936', 'Carl', 'Larsson', 'carl.larsson@example.com', '000-16 09 29', 'Nystigen 9', '99005', 'Karlstad'),
('020430-2871', 'Anneli', 'Vikström', 'anneli.vikström@example.com', '08-702 92 79', 'Parktorget 805', '72918', 'Uddevalla'),
('940701-1643', 'Gunvor', 'Eriksson', 'gunvor.eriksson@example.com', '060-366 44 84', 'Aspstigen 343', '60758', 'Halmstad'),
('000607-2557', 'Sofia', 'Johansson', 'sofia.johan@example.com', '0645-49 20 06', 'Järnvägsvägen 2', '96758', 'Karlstad'),
('131014-0114', 'Hans', 'Holmqvist', 'hans.holmqvist@example.com', '+46 (0)45 27 78 30', 'Trädgårdsgatan 97', '69584', 'Kristianstad'),
('110803-5971', 'Doris', 'Johansson', 'doris.johansson@example.com', '+46 (0)908 671 16', 'Backvägen 401', '36211', 'Örebro'),
('030214-8523', 'Ingrid', 'Olofsson', 'ingrid.olofsson@example.com', '0774-825 79', 'Parkgränd 7', '35142', 'Alingsås'),
('130519-1783', 'Mattias', 'Persson', 'mattias.persson@example.com', '08-94 63 95', 'Skolvägen 9', '94036', 'Skövde'),
('120609-8210', 'Kjell', 'Lindholm', 'kjell.lindholm@example.com', '023-14 88 16', 'Storstigen 305', '97840', 'Kristianstad'),
('040610-9199', 'Per', 'Eriksson', 'per.eriksson@example.com', '0658-91 10 27', 'Skogsvägen 43', '58870', 'Skövde'),
('060728-0328', 'Mary', 'Berntsson', 'mary.berntsson@example.com', '+46 (0)8 002 538 33', 'Stationsstigen 8', '14698', 'Jönköping'),
('980818-3553', 'Karl', 'Johansson', 'karl.johansson@example.com', '+46 (0)8 219 431 30', 'Trädgårdstorget 143', '12258', 'Halmstad'),
('031203-3236', 'Jan', 'Löfgren', 'jan.löfgren@example.com', '071-39 77 07', 'Fabriksvägen 65', '93623', 'Sundsvall'),
('080818-9294', 'Mattias', 'Olsson', 'mattias.olsson@example.com', '0184-36 83 73', 'Furugatan 89', '52364', 'Stockholm'),
('091101-5428', 'Margareta', 'Andersson', 'margareta.andersson@example.com', '+46 (0)622 748 10', 'Stationsgränd 25', '99795', 'Örebro'),
('030424-5756', 'Elisabeth', 'Andersson', 'elisabeth.andersson@example.com', '+46 (0)17 73 97 96', 'Strandgatan 2', '40004', 'Mölndal'),
('111017-7951', 'Sara', 'Olsson', 'sara.olsson@example.com', '+46 (0)46 84 84 20', 'Skolstigen 76', '83039', 'Örnsköldsvik'),
('020708-9194', 'Kjell', 'Strömberg', 'kjell.strömberg@example.com', '007-910 16 75', 'Ängsgränd 22', '75263', 'Södertälje'),
('080916-3710', 'Siv', 'Franzén', 'siv.franzén@example.com', '+46 (0)361 465 09', 'Nyvägen 969', '12164', 'Gävle'),
('110503-3896', 'Holger', 'Olsson', 'holger.olsson@example.com', '0028-88 70 22', 'Järnvägsvägen 4', '26984', 'Skövde'),
('100829-4181', 'Gunnel', 'Karlsson', 'gunnel.karlsson@example.com', '08-488 38 57', 'Aspgatan 326', '10069', 'Lidköping'),
('080131-4204', 'Bo', 'Andersson', 'bo.andersson@example.com', '08-75 88 76', 'Nygatan 2', '85275', 'Karlskoga'),
('080625-4108', 'Bo', 'Johansson', 'bo.johansson@example.com', '+46 (0)8 912 770 58', 'Industritorget 540', '70077', 'Karlskrona'),
('120111-2081', 'Inger', 'Norberg', 'inger.norberg@example.com', '08-837 671 24', 'Fabriksgatan 3', '73501', 'Luleå'),
('131109-3536', 'Gunnar', 'Jonsson', 'gunnar.jonsson@example.com', '+46 (0)056 896 22', 'Kyrkgatan 3', '27068', 'Piteå'),
('080327-2699', 'Staffan', 'Martinsson', 'staffan.martinsson@example.com', '08-290 79 88', 'Kyrkgatan 11', '21685', 'Karlskrona'),
('110602-7517', 'Marie', 'Fredriksson', 'marie.fredriksson@example.com', '0509-768 53', 'Strandgatan 16', '98945', 'Örnsköldsvik'),
('031105-0892', 'Gunborg', 'Larsson', 'gunborg.larsson@example.com', '0558-857 57', 'Kyrkogatan 0', '71104', 'Trollhättan'),
('021115-4349', 'Torsten', 'Persson', 'torsten.persson@example.com', '08-466 84 35', 'Fabriksgatan 184', '70224', 'Linköping'),
('050531-0441', 'Ulla', 'Olsson', 'ulla.olsson@example.com', '+46 (0)096 189 78', 'Parkstigen 41', '42712', 'Gävle'),
('080724-7259', 'Carl', 'Lindgren', 'carl.lindgren@example.com', '088-16 94 41', 'Björkvägen 921', '23676', 'Östersund'),
('990323-3691', 'Per', 'Lindberg', 'per.lindberg@example.com', '+46 (0)8 982 499 81', 'Aspvägen 0', '96886', 'Malmö'),
('080116-7933', 'Elisabet', 'Gustafsson', 'elisabet.gustafsson@example.com', '079-088 91 64', 'Skogstorget 58', '47682', 'Helsingborg'),
('090515-2492', 'Fredrik', 'Johansson', 'fredrik.johansson@example.com', '08-508 492 40', 'Stationsvägen 49', '75080', 'Sundsvall'),
('091012-9832', 'Daniel', 'Näslund', 'daniel.näslund@example.com', '0035-248 77', 'Backgatan 66', '29271', 'Karlskoga'),
('001119-5369', 'Martin', 'Jansson', 'martin.jansson@example.com', '+46 (0)8 122 001 12', 'Ringgatan 90', '91285', 'Örnsköldsvik'),
('050112-5868', 'Tobias', 'Bengtsson', 'tobias.bengtsson@example.com', '016-54 60 13', 'Järnvägsgränd 39', '54553', 'Motala'),
('090216-1330', 'Leif', 'Hansson', 'leif.hansson@example.com', '+46 (0)8 905 402 13', 'Skolgatan 4', '72236', 'Kristianstad'),
('001223-8267', 'Kerstin', 'Nyström', 'kerstin.nyström@example.com', '08-15 01 25', 'Åkergatan 020', '15863', 'Lund'),
('021031-7848', 'Linnea', 'Gustavsson', 'linnea.gustavsson@example.com', '08-133 49 56', 'Järnvägstorget 378', '73466', 'Skövde'),
('070309-1074', 'Ingegerd', 'Sandberg', 'ingegerd.sandberg@example.com', '046-731 19 66', 'Kyrktorget 80', '85997', 'Halmstad'),
('061104-5063', 'Samuel', 'Göransson', 'samuel.göransson@example.com', '0744-437 15', 'Ringtorget 9', '37511', 'Malmö'),
('060316-9103', 'Anette', 'Nilsson', 'anette.nilsson@example.com', '08-790 68 19', 'Kyrkovägen 386', '32700', 'Stockholm'),
('120302-3187', 'Bo', 'Arvidsson', 'bo.arvidsson@example.com', '+46 (0)598 809 74', 'Parkstigen 5', '81914', 'Halmstad'),
('000128-3852', 'Lars', 'Persson', 'lars.persson@example.com', '0272-758 01', 'Bäckstigen 14', '68211', 'Skellefteå'),
('970711-2976', 'Inga-Lill', 'Nilsson', 'inga-lill.nilsson@example.com', '08-84 31 10', 'Bäckgränd 950', '33075', 'Göteborg'),
('031030-4688', 'Anna', 'Andersson', 'anna.andersson@example.com', '045-37 29 53', 'Asptorget 584', '29440', 'Norrköping'),
('020302-5366', 'Gunborg', 'Mårtensson', 'gunborg.mårtensson@example.com', '075-175 84 61', 'Ringtorget 6', '40990', 'Göteborg'),
('060410-2863', 'Erik', 'Johansson', 'erik.johansson@example.com', '+46 (0)91 72 76 10', 'Björkgatan 217', '70086', 'Borås'),
('951025-9667', 'Alexander', 'Axelsson', 'alexander.axelsson@example.com', '+46 (0)8 147 419 26', 'Stationsvägen 315', '67102', 'Västerås'),
('050312-3655', 'Jan', 'Nilsson', 'jan.nilsson@example.com', '094-893 96 21', 'Skolgatan 1', '92293', 'Lund'),
('010917-1892', 'Vilhelm', 'Axelsson', 'vilhelm.axelsson@example.com', '060-183 42 92', 'Villatorget 806', '74262', 'Trelleborg'),
('011107-7749', 'Allan', 'Hansen', 'allan.hansen@example.com', '08-166 747 39', 'Björkvägen 6', '86542', 'Falun'),
('100401-7503', 'Gustaf', 'Lindén', 'gustaf.lindén@example.com', '077-35 78 27', 'Strandvägen 88', '62762', 'Mölndal'),
('000815-6606', 'Margaretha', 'Lundgren', 'margaretha.lundgren@example.com', '013-68 49 32', 'Parkvägen 84', '97131', 'Linköping'),
('131006-3233', 'Ove', 'Johansson', 'ove.johansson@example.com', '0982-309 11', 'Gengränd 557', '74771', 'Falun'),
('050101-1142', 'Dagmar', 'Jonsson', 'dagmar.jonsson@example.com', '0267-038 51', 'Idrottsgatan 779', '53316', 'Örnsköldsvik'),
('101203-5794', 'John', 'Johansson', 'john.johansson@example.com', '08-15 29 14', 'Villagatan 57', '81759', 'Borlänge'),
('120905-3923', 'Tomas', 'Svensson', 'tomas.svensson@example.com', '08-153 955 05', 'Industrivägen 431', '24315', 'Växjö'),
('071219-7821', 'Roland', 'Andersson', 'roland.andersson@example.com', '097-68 89 42', 'Backtorget 3', '81673', 'Trollhättan'),
('950312-3599', 'Anders', 'Eriksson', 'anders.eriksson@example.com', '+46 (0)47 16 43 05', 'Åkergränd 8', '80517', 'Trollhättan'),
('940922-7734', 'Ulf', 'Andersson', 'ulf.andersson@example.com', '032-30 73 38', 'Skogsvägen 098', '59551', 'Piteå'),
('061210-2350', 'Kjell', 'Dahlberg', 'kjell.dahlberg@example.com', '008-21 70 74', 'Ekvägen 867', '89009', 'Varberg'),
('991206-1588', 'Sune', 'Jansson', 'sune.jansson@example.com', '08-04 14 34', 'Järnvägsstigen 23', '14955', 'Luleå'),
('951127-3246', 'Ester', 'Karlsson', 'ester.karlsson@example.com', '0657-168 00', 'Ringgränd 370', '80421', 'Sundsvall'),
('050222-2359', 'Andreas', 'Persson', 'andreas.persson@example.com', '062-26 43 32', 'Skolstigen 30', '41526', 'Helsingborg'),

-- contact persons
('461128-8251', 'Niclas', 'Karlsson', 'niclas.karlsson@example.com', '0008-111 71', 'Åkervägen 4', '14005', 'Trelleborg'),
('791224-7462', 'Viola', 'Ottosson', 'viola.ottosson@example.com', '0302-56 23 67', 'Bäckstigen 163', '20487', 'Luleå'),
('731205-3817', 'Anita', 'Ivarsson', 'anita.ivarsson@example.com', '08-036 93 83', 'Idrottsstigen 2', '75650', 'Borås'),
('800401-6138', 'Margareta', 'Sundström', 'margareta.sunds@example.com', '056-486 89 11', 'Stationsgränd 43', '51796', 'Karlstad'),
('590629-2288', 'Valter', 'Åkesson', 'valter.åkesson@example.com', '+46 (0)8 894 980 78', 'Parkstigen 45', '42632', 'Västerås'),
('510626-4046', 'Kerstin', 'Gustafsson', 'kerstin.gustafsson@example.com', '08-189 14 27', 'Bäckvägen 605', '74043', 'Lidköping'),
('770125-7078', 'Peter', 'Olsson', 'peter.olsson@example.com', '078-96 91 94', 'Nygatan 91', '16587', 'Kristianstad'),
('791009-8479', 'Maria', 'Andersson', 'maria.andersson@example.com', '+46 (0)758 275 58', 'Idrottsstigen 59', '56107', 'Norrköping'),
('480609-8309', 'Ola', 'Nilsson', 'ola.nilsson@example.com', '031-011 11 45', 'Industristigen 862', '92122', 'Umeå'),
('620108-6854', 'Kenneth', 'Eliasson', 'kenneth.eliasson@example.com', '048-499 47 70', 'Ängsvägen 50', '79833', 'Trollhättan'),
('500530-4950', 'Anders', 'Nilsson', 'anders.nilsson@example.com', '+46 (0)8 222 337 59', 'Industritorget 7', '35100', 'Trelleborg'),
('531019-8816', 'Anders', 'Björk', 'anders.björk@example.com', '021-11 84 03', 'Kvarngatan 028', '71441', 'Piteå'),
('460518-0902', 'Erik', 'Hansson', 'erik.hansson@example.com', '08-27 74 97', 'Bäckgatan 163', '88429', 'Kalmar'),
('630420-7241', 'Maria', 'Nilsson', 'maria.nilsson@example.com', '+46 (0)782 705 99', 'Aspgatan 76', '34550', 'Halmstad'),
('590517-8751', 'Bert', 'Martinsson', 'bert.martinsson@example.com', '0366-22 67 71', 'Kyrkvägen 72', '19422', 'Skellefteå'),
('520804-9022', 'Marita', 'Eriksson', 'marita.eriksson@example.com', '0460-280 86', 'Ekgränd 331', '86512', 'Uppsala'),
('561127-7756', 'Sture', 'Karlsson', 'sture.karlsson@example.com', '+46 (0)67 54 59 26', 'Kyrkostigen 71', '38120', 'Uddevalla'),
('821019-4687', 'Ann-Mari', 'Karlsson', 'ann-mari.karlsson@example.com', '08-062 195 58', 'Skogstorget 8', '67324', 'Karlskrona'),
('780927-7200', 'Valdemar', 'Lindell', 'valdemar.lindell@example.com', '079-35 32 03', 'Strandgränd 2', '11328', 'Växjö'),
('821022-0201', 'Åsa', 'Svensson', 'åsa.svensson@example.com', '08-153 58 99', 'Åkergatan 503', '32600', 'Kalmar'),
('600426-1969', 'Daniel', 'Jonsson', 'daniel.jonsson@example.com', '0019-53 04 32', 'Strandstigen 01', '57473', 'Eskilstuna'),
('690307-8316', 'Peter', 'Johansson', 'peter.johansson@example.com', '08-422 02 45', 'Industrivägen 23', '94863', 'Östersund'),
('620327-1389', 'Evelina', 'Larsson', 'evelina.larsson@example.com', '+46 (0)517 775 08', 'Järnvägsvägen 443', '82592', 'Kalmar'),
('570813-1536', 'Nils', 'Larsson', 'nils.larsson@example.com', '0002-96 72 81', 'Kyrkgatan 97', '79425', 'Karlskoga'),
('700311-8929', 'Elisabeth', 'Nilsson', 'elisabeth.nilsson@example.com', '+46 (0)233 077 44', 'Parktorget 50', '54877', 'Kalmar'),
('521124-0931', 'Sture', 'Strömberg', 'sture.strömberg@example.com', '08-013 96 01', 'Åkertorget 0', '49118', 'Skövde'),
('810403-8651', 'Sofia', 'Johansson', 'sofia.johansson@example.com', '08-631 519 48', 'Villavägen 949', '76862', 'Västerås'),
('780606-5723', 'Margareta', 'Holmberg', 'margareta.holmberg@example.com', '0173-38 49 23', 'Industrivägen 30', '58595', 'Luleå'),
('770225-8083', 'Marianne', 'Jansson', 'marianne.jansson@example.com', '08-65 14 64', 'Bäcktorget 84', '73047', 'Södertälje'),
('520507-8784', 'Henning', 'Karlsson', 'henning.karlsson@example.com', '042-57 08 24', 'Ängsvägen 3', '83663', 'Örebro'),
('580112-7415', 'Marie', 'Carlsson', 'marie.carlsson@example.com', '+46 (0)32 40 82 68', 'Ängstorget 86', '73814', 'Malmö'),
('780329-7659', 'Mattias', 'Karlsson', 'mattias.karlsson@example.com', '086-77 28 41', 'Trädgårdsvägen 28', '35155', 'Helsingborg'),
('550910-0094', 'Mikael', 'Eriksson', 'mikael.eriksson@example.com', '+46 (0)8 806 978 26', 'Skolgatan 84', '79043', 'Lidköping'),
('651004-9890', 'Leif', 'Eriksson', 'leif.eriksson@example.com', '+46 (0)361 776 03', 'Fabriksvägen 54', '25101', 'Skövde'),
('811118-5099', 'Emil', 'Johansson', 'emil.johansson@example.com', '+46 (0)379 759 79', 'Skolgatan 40', '67599', 'Lund'),
('811023-2769', 'Yngve', 'Hansson', 'yngve.hansson@example.com', '0162-03 12 35', 'Strandgatan 01', '40134', 'Örnsköldsvik'),
('730608-0578', 'Marie', 'Karlsson', 'marie.karlsson@example.com', '+46 (0)363 396 29', 'Parkgränd 13', '66906', 'Uddevalla'),
('571121-6647', 'Johannes', 'Pålsson', 'johannes.pålsson@example.com', '0367-521 30', 'Industrivägen 290', '74982', 'Motala'),
('620824-6816', 'Lars', 'Dahlström', 'lars.dahlström@example.com', '08-595 430 64', 'Kyrkgränd 357', '97422', 'Lund'),
('440829-8471', 'Eva', 'Engström', 'eva.engström@example.com', '08-901 022 75', 'Parkvägen 58', '57839', 'Stockholm'),
('610618-0075', 'Maria', 'Nordström', 'maria.nordström@example.com', '+46 (0)192 333 51', 'Stationsvägen 06', '58093', 'Piteå'),
('711010-5447', 'Rolf', 'Andersson', 'rolf.andersson@example.com', '058-371 76 66', 'Industristigen 9', '34371', 'Örnsköldsvik'),
('460528-6782', 'Stig', 'Nilsson', 'stig.nilsson@example.com', '+46 (0)28 71 83 79', 'Bäckvägen 172', '58466', 'Nyköping'),
('570327-4083', 'Lennart', 'Björkman', 'lennart.björkman@example.com', '+46 (0)65 13 63 53', 'Skolstigen 90', '84353', 'Eskilstuna'),
('710610-1848', 'Ingrid', 'Eriksson', 'ingrid.eriksson@example.com', '0249-763 08', 'Villavägen 931', '29002', 'Södertälje'),
('810427-7390', 'Olof', 'Sandberg', 'olof.sandberg@example.com', '+46 (0)8 814 126 68', 'Kyrkogatan 554', '12217', 'Jönköping'),
('760608-5624', 'Dagmar', 'Wallin', 'dagmar.wallin@example.com', '099-46 42 14', 'Kyrkgatan 193', '87631', 'Skövde'),
('480329-7466', 'Cecilia', 'Eriksson', 'cecilia.eriksson@example.com', '08-45 76 97', 'Trädgårdsgränd 75', '30062', 'Alingsås'),
('651213-8287', 'Robert', 'Andersson', 'robert.andersson@example.com', '+46 (0)8 863 596 07', 'Nystigen 659', '51196', 'Gävle'),
('620530-2810', 'Olof', 'Nilsson', 'olof.nilsson@example.com', '08-00 67 62', 'Genvägen 33', '29254', 'Karlskoga'),
('570522-9176', 'Hugo', 'Bengtsson', 'hugo.bengtsson@example.com', '0630-914 95', 'Storgatan 15', '69521', 'Västerås'),
('720424-8814', 'Anna', 'Larsson', 'anna.larsson@example.com', '08-015 577 07', 'Bäckvägen 7', '42938', 'Lund'),
('450724-9250', 'Ellen', 'Karlsson', 'ellen.karlsson@example.com', '075-367 70 31', 'Villagatan 9', '44383', 'Östersund'),
('540630-8113', 'Pernilla', 'Eriksson', 'pernilla.eriksson@example.com', '080-331 25 53', 'Parkgatan 5', '43383', 'Gävle'),
('450815-4855', 'Inger', 'Gustafsson', 'inger.gustafsson@example.com', '0275-320 32', 'Parktorget 231', '21114', 'Varberg'),
('641027-0836', 'Gun', 'Eriksson', 'gun.eriksson@example.com', '0182-41 35 27', 'Grangränd 558', '79002', 'Ängelholm'),
('700516-0721', 'Elisabeth', 'Fredriksson', 'elisabeth.fredriksson@example.com', '0970-740 06', 'Parkvägen 7', '28994', 'Växjö'),
('780726-0794', 'Olle', 'Larsson', 'olle.larsson@example.com', '022-61 67 49', 'Järnvägsgränd 9', '86432', 'Trollhättan'),
('740611-8641', 'Martina', 'Lundgren', 'martina.lundgren@example.com', '0834-96 64 71', 'Åkertorget 455', '93972', 'Ängelholm'),
('681212-6081', 'Lena', 'Franzén', 'lena.franzén@example.com', '031-88 90 66', 'Nyvägen 16', '10614', 'Södertälje'),
('740131-4856', 'Åsa', 'Mårtensson', 'åsa.mårtensson@example.com', '0089-03 72 93', 'Trädgårdsvägen 7', '80287', 'Mölndal'),
('820610-6653', 'Torbjörn', 'Karlsson', 'torbjörn.karlsson@example.com', '08-097 31 31', 'Idrottsgatan 6', '31235', 'Borås'),
('491002-8721', 'David', 'Karlsson', 'david.karlsson@example.com', '08-96 34 06', 'Parkgatan 2', '93647', 'Skellefteå'),
('660226-2047', 'Linnéa', 'Gustafsson', 'linnéa.gustafsson@example.com', '08-308 32 40', 'Strandtorget 0', '22118', 'Landskrona'),
('680429-5316', 'Greta', 'Ström', 'greta.ström@example.com', '+46 (0)284 625 01', 'Skolvägen 056', '48377', 'Piteå'),
('650604-2792', 'Georg', 'Olsson', 'georg.olsson@example.com', '+46 (0)51 68 81 40', 'Trädgårdsgatan 379', '44616', 'Trollhättan'),
('580917-1449', 'Gustav', 'Magnusson', 'gustav.magnusson@example.com', '08-123 52 77', 'Strandgatan 479', '34661', 'Umeå'),
('830925-7569', 'Ylva', 'Gustafsson', 'ylva.gustafsson@example.com', '08-37 64 31', 'Genvägen 67', '69644', 'Uddevalla'),
('720406-2942', 'Ann-Charlotte', 'Ericsson', 'ann-charlotte.ericsson@example.com', '+46 (0)58 43 78 41', 'Ringgatan 70', '37042', 'Skövde'),
('621216-4591', 'Bo', 'Gustavsson', 'bo.gustavsson@example.com', '08-801 009 76', 'Kyrkogränd 98', '83697', 'Norrköping'),
('610628-3622', 'Helge', 'Persson', 'helge.persson@example.com', '+46 (0)8 907 611 52', 'Aspgränd 407', '90033', 'Nyköping'),
('630110-0209', 'Elsa', 'Jansson', 'elsa.jansson@example.com', '0451-066 79', 'Parkgatan 4', '92391', 'Sundsvall'),
('670510-0870', 'Nils', 'Jonsson', 'nils.jonsson@example.com', '0904-38 82 42', 'Grangatan 95', '54184', 'Falun'),
('621117-5515', 'Eva', 'Söderlund', 'eva.söderlund@example.com', '+46 (0)667 047 49', 'Kyrkgatan 87', '39362', 'Uppsala'),
('691020-4061', 'Birger', 'Pettersson', 'birger.pettersson@example.com', '0326-038 86', 'Järnvägsgatan 901', '92417', 'Karlskrona'),
('641214-2439', 'Arne', 'Sundberg', 'arne.sundberg@example.com', '+46 (0)92 97 17 95', 'Nytorget 10', '34774', 'Stockholm'),
('571004-4164', 'Jesper', 'Larsson', 'jesper.larsson@example.com', '08-60 44 69', 'Järnvägstorget 37', '42105', 'Karlstad'),
('490401-7573', 'Erik', 'Svensson', 'erik.svensson@example.com', '08-205 877 55', 'Genvägen 11', '95931', 'Uddevalla'),
('720705-1751', 'Stefan', 'Eriksson', 'stefan.eriksson@example.com', '08-06 88 26', 'Granvägen 25', '56240', 'Norrköping'),
('731019-4159', 'Lilian', 'Henriksson', 'lilian.henriksson@example.com', '+46 (0)8 527 603 15', 'Fabriksgränd 96', '34844', 'Gävle'),

-- instructors
('850515-7811', 'Bengt', 'Lundström', 'bengt.lundström@example.com', '08-734 919 11', 'Nyvägen 11', '14982', 'Karlstad'),
('870323-2895', 'Elsa', 'Larsson', 'elsa.larsson@example.com', '08-46 89 49', 'Parkgatan 0', '44926', 'Alingsås'),
('980703-0805', 'Henry', 'Larsson', 'henry.larsson@example.com', '08-133 89 00', 'Ängstorget 88', '16488', 'Eskilstuna'),
('940611-3903', 'Maria', 'Håkansson', 'maria.håkansson@example.com', '+46 (0)23 80 57 81', 'Stationstorget 527', '31714', 'Trollhättan'),
('971215-8683', 'Erik', 'Lundgren', 'erik.lundgren@example.com', '055-80 08 08', 'Kvarnstigen 460', '97264', 'Örebro'),
('851017-2201', 'Jan', 'Persson', 'jan.persson@example.com', '+46 (0)942 806 98', 'Idrottsgatan 947', '12901', 'Norrköping'),
('900601-6407', 'Birgitta', 'Karlsson', 'birgitta.karlsson@example.com', '08-645 05 17', 'Fabrikstorget 1', '53909', 'Varberg'),
('891110-5974', 'Einar', 'Olsson', 'einar.olsson@example.com', '0514-53 38 64', 'Ekvägen 6', '93565', 'Malmö'),
('940713-9873', 'Sven', 'Olsson', 'sven.olsson@example.com', '+46 (0)05 05 19 61', 'Furustigen 6', '16289', 'Trollhättan'),
('950415-2456', 'Karl', 'Englund', 'karl.englund@example.com', '089-07 47 56', 'Industrigränd 97', '47405', 'Malmö'),
('961101-5455', 'Rikard', 'Arvidsson', 'rikard.arvidsson@example.com', '08-605 171 23', 'Grangatan 005', '47431', 'Kristianstad'),
('931028-1259', 'John', 'Bengtsson', 'john.bengtsson@example.com', '08-129 65 74', 'Skolgränd 129', '20397', 'Motala'),
('950418-9847', 'Uno', 'Hermansson', 'uno.hermansson@example.com', '+46 (0)833 051 39', 'Bäckvägen 863', '47871', 'Alingsås'),
('940807-8732', 'Maj', 'Johansson', 'maj.johansson@example.com', '090-277 20 24', 'Industrigatan 81', '92452', 'Trelleborg'),
('870326-8717', 'Anders', 'Törnqvist', 'anders.törnqvist@example.com', '08-03 24 73', 'Björkgränd 9', '64912', 'Linköping'),
('910724-7190', 'Jonas', 'Andersson', 'jonas.andersson@example.com', '0263-263 74', 'Bäckgränd 303', '33448', 'Uddevalla'),
('960523-5994', 'Margareta', 'Sundström', 'margareta.sundström@example.com', '0210-84 02 26', 'Stationsgatan 4', '31423', 'Umeå'),
('950309-6183', 'Andreas', 'Bengtsson', 'andreas.bengtsson@example.com', '023-239 81 31', 'Industristigen 78', '34553', 'Helsingborg'),
('870819-6301', 'Mikael', 'Hedman', 'mikael.hedman@example.com', '+46 (0)8 620 608 62', 'Nyvägen 326', '45488', 'Karlskoga'),
('850528-0605', 'Johanna', 'Lundström', 'johanna.lundström@example.com', '0824-714 52', 'Åkerstigen 5', '18330', 'Ängelholm');

INSERT INTO "student" ("person_id") VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31),
(32),
(33),
(34),
(35),
(36),
(37),
(38),
(39),
(40),
(41),
(42),
(43),
(44),
(45),
(46),
(47),
(48),
(49),
(50),
(51),
(52),
(53),
(54),
(55),
(56),
(57),
(58),
(59),
(60),
(61),
(62),
(63),
(64),
(65),
(66),
(67),
(68),
(69),
(70),
(71),
(72),
(73),
(74),
(75),
(76),
(77),
(78),
(79),
(80),
(81),
(82),
(83),
(84),
(85),
(86),
(87),
(88),
(89),
(90),
(91),
(92),
(93),
(94),
(95),
(96),
(97),
(98),
(99),
(100);

INSERT INTO "sibling" ("student_id", "sibling_student_id") VALUES
(2,4),
(4,2),
(3,5),
(5,3),
(11,20),
(20,11),
(63,34),
(34,63),
(15,7),
(7,15),
(30,44),
(44,30),
(89,90),
(90,89),
(56,19),
(19,56),
(37,22),
(22,37),
(29,13),
(13,29),
(14,73),
(73,14),
(95,41),
(41,95),
(26,17),
(17,26),
(74,83),
(83,74),
(57,91),
(91,57),
(12,25),
(25,12),
(66,69),
(69,66),
(70,6),
(6,70),
(47,8),
(8,47),
(59,49),
(49,59),
(94,77),
(77,94),
(97,98),
(97,99),
(98,99),
(98,97),
(99,97),
(99,98);


INSERT INTO "contact_person" ("student_id", "person_id") VALUES
(1, 101),
(2, 102),
(3, 103),
(4, 102),
(5, 103),
(6, 104),
(7, 105),
(8, 106),
(9, 107),
(10, 108),
(11, 109),
(12, 110),
(13, 111),
(14, 112),
(15, 105),
(16, 113),
(17, 114),
(18, 115),
(19, 116),
(20, 109),
(21, 117),
(22, 118),
(23, 119),
(24, 120),
(25, 110),
(26, 114),
(27, 121),
(28, 122),
(29, 111),
(30, 123),
(31, 124),
(32, 125),
(33, 126),
(34, 127),
(35, 128),
(36, 129),
(37, 118),
(38, 130),
(39, 131),
(40, 132),
(41, 133),
(42, 134),
(43, 135),
(44, 123),
(45, 136),
(46, 137),
(47, 106),
(48, 138),
(49, 139),
(50, 140),
(51, 141),
(52, 142),
(53, 143),
(54, 144),
(55, 145),
(56, 116),
(57, 146),
(58, 147),
(59, 139),
(60, 148),
(61, 149),
(62, 150),
(63, 127),
(64, 151),
(65, 152),
(66, 153),
(67, 154),
(68, 155),
(69, 153),
(70, 104),
(71, 156),
(72, 157),
(73, 112),
(74, 158),
(75, 159),
(76, 160),
(77, 161),
(78, 162),
(79, 163),
(80, 164),
(81, 165),
(82, 166),
(83, 158),
(84, 167),
(85, 168),
(86, 169),
(87, 170),
(88, 171),
(89, 172),
(90, 172),
(91, 146),
(92, 173),
(93, 174),
(94, 161),
(95, 133),
(96, 175),
(97, 176),
(98, 177),
(99, 178),
(100, 179);

INSERT INTO "instructor" ("employment_id", "can_teach_ensembles", "person_id") VALUES
('EMP12345', true, 180),
('EMP67890', true, 181),
('EMP56471', true, 182),
('EMP68191', true, 183),
('EMP67893', true, 184),
('EMP64001', true, 185),
('EMP62536', true, 186),
('EMP69814', true, 187),
('EMP34901', true, 188),
('EMP78628', true, 189),
('EMP70136', true, 190),
('EMP54819', false, 191),
('EMP62000', false, 192),
('EMP19642', false, 193),
('EMP67125', false, 194),
('EMP67025', false, 195),
('EMP83184', false, 196),
('EMP90138', false, 197),
('EMP18472', false, 198),
('EMP74281', false, 199);

-- lease contract

INSERT INTO "lease_policy" ("rental_limit", "rental_period") VALUES
('Max number of rental instruments is 2', 'Max period of a rental is 12 months');

INSERT INTO "lease_contract" ("student_id", "stock_id", "start_date", "end_date", "lease_policy_id") VALUES
(1, 1, '2023-11-23 10:40:22', '2024-11-23 10:40:22', 1),
(5, 2, '2023-10-23 10:40:22', '2024-10-23 10:40:22', 1),
(5, 3, '2023-11-23 11:15:09', '2024-11-23 11:15:09', 1);

-- instructor's known instruments

INSERT INTO "known_instruments" ("instructor_id", "instrument_id") VALUES
(1,1),
(1,6),
(1,3),
(2,2),
(2,4),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,1),
(9,2),
(10,3),
(10,1),
(10,2),
(11,4),
(12,5),
(13,6),
(14,7),
(15,1),
(16,2),
(17,3),
(18,4),
(19,5),
(20,7),
(20,6),
(20,5);


-- price scheme
INSERT INTO "price_scheme" ("skill_level_id", "lesson_type_id", "price", "valid_from", "valid_to", "discount_rate") VALUES
(1,1, 199.98, '2023-01-01', '2023-12-31', 15),
(1,2, 220.00, '2023-01-01', '2023-12-31', 15),
(1,3, 249.98, '2023-01-01', '2023-12-31', 15),

(2,1, 199.98, '2023-01-01', '2023-12-31', 15),
(2,2, 220.00, '2023-01-01', '2023-12-31', 15),
(2,3, 249.98, '2023-01-01', '2023-12-31', 15),

(3,1, 259.98, '2023-01-01', '2023-12-31', 15),
(3,2, 265.00, '2023-01-01', '2023-12-31', 15),
(3,3, 270.00, '2023-01-01', '2023-12-31', 15);


-- lessons

INSERT INTO "lesson" ("start_time", "end_time", "instructor_id", "skill_level_id", "room_id", "price_scheme_id") VALUES
('2023-11-27 10:00:00', '2023-11-27 11:30:00', 6, 1, 3, 1),
('2023-11-27 13:00:00', '2023-11-27 14:30:00', 1, 2, 5, 2),
('2023-11-28 10:00:00', '2023-11-28 11:30:00', 4, 1, 4, 1),
('2023-11-29 10:00:00', '2023-11-29 11:30:00', 1, 3, 7, 7),
('2023-11-29 10:00:00', '2023-11-29 11:30:00', 10, 2, 8, 4),

('2023-11-30 15:00:00', '2023-11-30 16:30:00', 16, 1, 1, 2),
('2023-11-30 17:00:00', '2023-11-30 18:30:00', 20, 3, 2, 8),
('2023-12-01 10:00:00', '2023-12-01 11:30:00', 1, 1, 6, 2),
('2023-12-01 10:00:00', '2023-12-01 11:30:00', 4, 2, 2, 5),
('2023-12-04 14:00:00', '2023-12-04 15:30:00', 6, 3, 4, 8),

('2023-12-04 17:00:00', '2023-12-04 18:30:00', 1, 1, 10, 3),
('2023-12-12 13:00:00', '2023-12-12 14:30:00', 4, 2, 6, 6),
('2023-12-21 10:00:00', '2023-12-21 11:30:00', 4, 1, 3, 3),
('2024-01-10 17:00:00', '2024-01-10 18:30:00', 1, 3, 9, 9),
('2024-01-16 14:00:00', '2024-01-16 15:30:00', 6, 2, 5, 6);



INSERT INTO "individual_lesson" ("lesson_id", "student_id", "instrument_id") VALUES
(1, 1, 6),
(2, 6, 1),
(3, 74, 4),
(4, 98, 3),
(5, 2, 1);

INSERT INTO "group_lesson" ("lesson_id", "min_students", "max_students", "instrument_id") VALUES
(6, 3, 5, 2),
(7, 3, 5, 7),
(8, 3, 5, 3),
(9, 3, 5, 4),
(10, 3, 5, 6);

INSERT INTO "ensembles" ("lesson_id", "min_students", "max_students", "genre_id") VALUES
(11, 6, 10, 6),
(12, 6, 10, 4),
(13, 6, 10, 2),
(14, 6, 10, 6),
(15, 6, 10, 3);


-- lesson booking
INSERT INTO "lesson_booking" ("student_id", "lesson_id") VALUES
-- individuals
(1,1),
(6,2),
(74,3),
(98,4),
(2,5),

-- group 

(41,6),
(95,6),
(10,6),
(48,6),
(51,6),

(87,7),
(21,7),
(100,7),
(36,7),
(11,7),

(93,8),
(88,8),
(19,8),
(27,8),
(34,8),

(5,9),
(20,9),
(65,9),
(43,9),
(58,9),

(66,10),
(7,10),
(15,10),

-- ensembles

(18,11),
(27,11),
(11,11),
(3,11),
(100,11),
(99,11),
(10,11),
(12,11),
(36,11),
(54,11),

(5,12),
(20,12),
(65,12),
(43,12),
(58,12),
(33,12),
(9,12),


(5,13),
(20,13),
(65,13),
(43,13),
(58,13),


(71,14),
(86,14),

(24,15);