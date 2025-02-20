-- CREATE SCHEMA `rotmg_db` ;

CREATE TABLE IF NOT EXISTS class 
(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name varchar(50) UNIQUE,
    hp INT,
    mp INT,
    att INT,
    def INT,
    spd INT,
    dex INT,
    vit INT,
    wis INT
);
INSERT INTO class (name, hp, mp, att, def, spd, dex, vit, wis) 
VALUES
('Wizard',      700, 385, 75, 25, 50, 75, 40, 60),
('Necromancer', 700, 385, 75, 25, 50, 60, 40, 75),
('Mystic',      700, 385, 65, 25, 60, 65, 40, 75),
('Priest',      700, 385, 55, 25, 55, 60, 40, 75),
('Sorcerer',    700, 385, 70, 25, 60, 60, 75, 60),
('Summoner',    700, 385, 60, 25, 60, 75, 40, 75),
('Archer',      750, 252, 75, 25, 55, 50, 40, 50),
('Huntress',    750, 305, 65, 25, 50, 60, 40, 60),
('Bard',        750, 385, 55, 25, 55, 70, 45, 75),
('Rogue',       750, 252, 55, 25, 65, 75, 40, 50),
('Assassin',    750, 305, 65, 25, 65, 75, 40, 60),
('Trickster',   750, 252, 65, 25, 75, 75, 40, 60),
('Warrior',     800, 252, 75, 25, 50, 50, 75, 50),
('Knight',      800, 252, 50, 40, 50, 50, 75, 50),
('Paladin',     800, 252, 55, 30, 55, 55, 60, 75);

CREATE TABLE IF NOT EXISTS weapon_type 
(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    type_name varchar(25) UNIQUE
);
INSERT INTO weapon_type (type_name) VALUES
('Staff'), 
('Wand'), 
('Bow'), 
('Dagger'), 
('Sword');

DROP TABLE weapon_types;

CREATE TABLE IF NOT EXISTS stave 
(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    tier TEXT NOT NULL,
    name TEXT NOT NULL,
    damage TEXT NOT NULL,
    ave_damage REAL NOT NULL,
    projectile_speed REAL NOT NULL,
    projectile_rate REAL NOT NULL DEFAULT 100,
    projectile_shots INT NOT NULL,
    projectile_range REAL NOT NULL,
    projectile_pierce INTEGER CHECK (projectile_pierce IN (0, 1))
);
INSERT INTO stave (tier, name, damage, ave_damage, projectile_speed, projectile_rate, projectile_shots, projectile_range, projectile_pierce)
VALUES
('1', 'Staff of Destruction',         '45-85',  65,     18,   100, 2, 8.55, 0),
('2', 'Staff of Horror',              '50-90',  70,     18,   100, 2, 8.55, 0),
('3', 'Staff of Necrotic Arcana',     '50-95',  72.5,   18,   100, 2, 8.55, 0),
('4', 'Staff of Diabolic Secrets',    '55-95',  75,     18,   100, 2, 8.55, 0),
('5', 'Staff of Astral Knowledge',    '55-100', 77.5,   18,   100, 2, 8.55, 0),
('6', 'Staff of the Cosmic Whole',    '60-100', 80,     18,   95,  2, 8.55, 0),
('7', 'Staff of the Vital Unity',     '65-110', 87.5,   18,   100, 2, 8.55, 0),
('UT', 'Staff of Extreme Prejudice',  '80-95',  87.5,   11,   40, 10,  	 0,	0),
('UT', 'Staff of Unholy Sacrifice', '130-155',  570,    11.5, 55,  4, 8.05, 1),
('ST', 'Edictum Praetoris',          '40-105',  217.5,  15,   75,  3, 8.55, 0);

ALTER TABLE stave ADD COLUMN weapon_type_id INT;

CREATE TABLE IF NOT EXISTS wand 
(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    tier TEXT NOT NULL,
    name TEXT NOT NULL,
    damage TEXT NOT NULL,
    ave_damage REAL NOT NULL,
    projectile_speed REAL NOT NULL,
    projectile_rate REAL NOT NULL DEFAULT 100,
    projectile_shots INT NOT NULL,
    projectile_range REAL NOT NULL,
    projectile_pierce INTEGER CHECK (projectile_pierce IN (0, 1))
);
INSERT INTO wand (tier, name, damage, ave_damage, projectile_speed, projectile_rate, projectile_shots, projectile_range, projectile_pierce)
VALUES
('1', 'Wand of Arcane Flame',   '110-140', 125,   18,   100, 1, 9, 1),
('2', 'Wand of Death',          '115-155', 135,   18,   100, 1, 9, 1),
('3', 'Wand of Deep Sorcery',   '120-160', 140,   18,   100, 1, 9, 1),
('4', 'Wand of Shadow',         '125-165', 145,   18,   100, 1, 9, 1),
('5', 'Wand of Warning',        '125-170', 147.5, 18,   100, 1, 9, 1),
('6', 'Wand of Recompense',     '130-175', 152.5, 18,   100, 1, 9, 1),
('7', 'Wand of Evocation',      '145-180', 162.5, 18,   100, 1, 9, 1),
('UT', 'Crystal Wand',          '105-150', 127.5, 15,   110, 1, 9, 0),
('UT', 'Wand of the Fallen',    '205-240', 222.5, 14.4,  85, 1, 9, 0),
('UT', 'Conducting Wand',       '100-175', 137.5, 17,   125, 1, 9, 0),
('ST', 'Abomination Wrath',     '300-335', 317.5, 11,    55, 1, 9, 0),
('ST', 'Theurgy Wand',          '125-130', 255,   20,    75, 2, 7.5, 1);

ALTER TABLE wand ADD COLUMN weapon_type_id INT;

CREATE TABLE IF NOT EXISTS bow 
(
   id INTEGER PRIMARY KEY AUTO_INCREMENT,
    tier TEXT NOT NULL,
    name TEXT NOT NULL,
    damage TEXT NOT NULL,
    ave_damage REAL NOT NULL,
    projectile_speed REAL NOT NULL,
    projectile_rate REAL NOT NULL DEFAULT 100,
    projectile_shots INT NOT NULL,
    projectile_range REAL NOT NULL,
    projectile_pierce INTEGER CHECK (projectile_pierce IN (0, 1))
);
INSERT INTO bow (tier, name, damage, ave_damage, projectile_speed, projectile_rate, projectile_shots, projectile_range, projectile_pierce)
VALUES
('1', 'Redwood Bow',    '105-135',  120, 16, 100, 3, 7.04, 1),
('2', 'Golden Bow',     '125-155',  140, 16, 100, 3, 7.04, 1),
('3', 'Verdant Bow',    '135-165',  150, 16, 100, 3, 7.04, 1),
('4', 'Fey Magic',      '155-185',  170, 16, 100, 3, 7.04, 1),
('5', 'Innocent Blood', '165-195',  180, 16, 100, 3, 7.04, 1),
('6', 'Covert Havens',  '175-205',  190, 16, 100, 3, 7.04, 1),
('7', 'Mystical Energy', '205-235', 220, 16, 100, 3, 7.04, 1),
('UT', 'Leaf Bow',      '120-175',  147.5, 12, 140, 1, 7.2, 0),
('UT', 'Thousand Shot', '65-130',   97.5, 16.5, 200, 1, 7.59, 1),
('ST', 'Bergenia Bow',  '160-195',  177.5, 15, 100, 1, 8, 0);

ALTER TABLE bow ADD COLUMN weapon_type_id INT;

CREATE TABLE IF NOT EXISTS dagger 
(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    tier TEXT NOT NULL,
    name TEXT NOT NULL,
    damage TEXT NOT NULL,
    ave_damage REAL NOT NULL,
    projectile_speed REAL NOT NULL,
    projectile_rate REAL NOT NULL DEFAULT 100,
    projectile_shots INT NOT NULL,
    projectile_range REAL NOT NULL,
    projectile_pierce INTEGER CHECK (projectile_pierce IN (0, 1))
);
INSERT INTO dagger (tier, name, damage, ave_damage, projectile_speed, projectile_rate, projectile_shots, projectile_range, projectile_pierce)
VALUES
('1', 'Mithril Dagger',     '70-140',   105, 14, 105, 1, 5.6, 0),
('2', 'Fire Dagger',        '85-155',   120, 14, 105, 1, 5.6, 0),
('3', 'Ragetalon Dagger',   '95-165',   130, 14, 105, 1, 5.6, 0),
('4', 'Emerald Dagger',     '100-175', 137.5, 14, 105, 1, 5.6, 0),
('5', 'Agateclaw Dagger',   '105-190',  147.5, 14, 105, 1, 5.6, 0),
('6', 'Foul Malevolence',   '115-200', 157.5, 14, 105, 1, 5.6, 0),
('7', 'Sinister Deeds',     '125-220', 172.5, 14, 105, 1, 5.6, 0),
('UT', 'Spirit Dagger',     '50-280',   165, 13, 105, 1, 5.2, 0),
('UT', 'Corruption Cutter', '85-100',   185, 14, 120, 2, 5.6, 0),
('ST', 'Toxin Tooth',       '265-320',  292.5, 10, 70, 1, 3.5, 0);

ALTER TABLE dagger ADD COLUMN weapon_type_id INT;

CREATE TABLE IF NOT EXISTS sword 
(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    tier TEXT NOT NULL,
    name TEXT NOT NULL,
    damage TEXT NOT NULL,
    ave_damage REAL NOT NULL,
    projectile_speed REAL NOT NULL,
    projectile_rate REAL NOT NULL DEFAULT 100,
    projectile_shots INT NOT NULL,
    projectile_range REAL NOT NULL,
    projectile_pierce INTEGER CHECK (projectile_pierce IN (0, 1))
);
INSERT INTO sword (tier, name, damage, ave_damage, projectile_speed, projectile_rate, projectile_shots, projectile_range, projectile_pierce)
VALUES
('1', 'Golden Sword',       '150-180', 165,     10, 100, 1, 3.5, 0),
('2', 'Ravenheart Sword',   '180-255', 217.5,   10, 100, 1, 3.5, 0),
('3', 'Dragonsoul Sword',   '195-255', 225,     10, 100, 1, 3.5, 0),
('4', 'Archon Sword',       '210-255', 232.5,   10, 100, 1, 3.5, 0),
('5', 'Skysplitter Sword',  '210-270', 240,     10, 100, 1, 3.5, 0),
('6', 'Sword of Acclaim',   '220-275', 247.5,   10, 100, 1, 3.5, 0),
('7', 'Sword of Splendor',  '235-290', 262.5,   10, 100, 1, 3.5, 0),
('UT', 'Demon Blade',       '150-175', 325,     13, 100, 2, 3.38, 0),
('UT', 'Pirate Cutlass',    '180-230', 205,     15, 130, 1, 3.3, 0),
('ST', 'Indomptable',       '550-600', 575,     8,   33, 1, 4.5, 1);

ALTER TABLE sword ADD COLUMN weapon_type_id INT;

SET SQL_SAFE_UPDATES = 0;

UPDATE stave SET weapon_type_id = (SELECT id FROM weapon_type WHERE name = 'stave');
UPDATE wand SET weapon_type_id = (SELECT id FROM weapon_type WHERE name = 'wand');
UPDATE bow SET weapon_type_id = (SELECT id FROM weapon_type WHERE name = 'bow');
UPDATE dagger SET weapon_type_id = (SELECT id FROM weapon_type WHERE name = 'dagger');
UPDATE sword SET weapon_type_id = (SELECT id FROM weapon_type WHERE name = 'sword');


CREATE TABLE IF NOT EXISTS class_weapon
(
    class_id INT,
    weapon_type_id INTEGER NOT NULL,
    PRIMARY KEY (class_id, weapon_type_id), 
    FOREIGN KEY (class_id) REFERENCES class(id),
    FOREIGN KEY (weapon_type_id) REFERENCES weapon_type(id)
);
INSERT INTO class_weapon (class_id, weapon_type_id)
SELECT id, (SELECT id FROM weapon_type WHERE name = 'wand') FROM class WHERE name IN ('Priest', 'Sorcerer', 'Summoner');

INSERT INTO class_weapon (class_id, weapon_type_id)
SELECT id, (SELECT id FROM weapon_type WHERE name = 'bow') FROM class WHERE name IN ('Archer', 'Huntress', 'Bard');

INSERT INTO class_weapon (class_id, weapon_type_id)
SELECT id, (SELECT id FROM weapon_type WHERE name = 'sword') FROM class WHERE name IN ('Warrior', 'Knight', 'Paladin');

Drop TABLE WEAPON;

-- INSERT INTO weapon (weapon_name, weapon_type_id) VALUES
-- ('Staff of Destruction', 1),
-- ('Staff of Horror', 1),
-- ('Staff of Necrotic Arcana', 1),
-- ('Staff of Diabolic Secrets', 1),
-- ('Staff of Astral Knowledge', 1),
-- ('Staff of the Cosmic Whole', 1),
-- ('Staff of the Vital Unity', 1),
-- ('Staff of Extreme Prejudice', 1),
-- ('Staff of Unholy Sacrifice', 1),
-- ('Edictum Praetoris', 1),

-- ('Wand of Arcane Flame', 2),
-- ('Wand of Death', 2),
-- ('Wand of Deep Sorcery', 2),
-- ('Wand of Shadow', 2),
-- ('Wand of Warning', 2),
-- ('Wand of the Fallen', 2),
-- ('Conducting Wand', 2),
-- ('Abomination Wrath', 2),
-- ('Theurgy Wand', 2),

-- ('Redwood Bow', 3),
-- ('Golden Bow', 3),
-- ('Verdant Bow', 3),
-- ('Bow of Fey Magic', 3),
-- ('Bow of Innocent Blood', 3),
-- ('Bow of Covert Havens', 3),
-- ('Bow of Mystical Energy', 3),
-- ('Leaf Bow', 3),
-- ('Thousand Shot', 3),
-- ('Bergenia Bow', 3),

-- ('Mithril Dagger', 4),
-- ('Fire Dagger', 4),
-- ('Ragetalon Dagger', 4),
-- ('Emeraldshard Dagger', 4),
-- ('Agateclaw Dagger', 4),
-- ('Dagger of Foul Malevolence', 4),
-- ('Dagger of Sinister Deeds', 4),
-- ('Spirit Dagger', 4),
-- ('Corruption Cutter', 4),
-- ('Toxin Tooth', 4),

-- ('Golden Sword', 5),
-- ('Ravenheart Sword', 5),
-- ('Dragonsoul Sword', 5),
-- ('Archon Sword', 5),
-- ('Skysplitter Sword', 5),
-- ('Sword of Acclaim', 5),
-- ('Sword of Splendor', 5),
-- ('Demon Blade', 5),
-- ('Pirate Cutlass', 5),
-- ('Indomptable', 5);


CREATE TABLE IF NOT EXISTS armor 
(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    armor_name TEXT NOT NULL,
    armor_type TEXT NOT NULL
);


CREATE TABLE IF NOT EXISTS class_armor
(
    class_id INTEGER,
    armor_id INTEGER,
    FOREIGN KEY(class_id) REFERENCES class(id),
    FOREIGN KEY(armor_id) REFERENCES armor(id),
    PRIMARY KEY (class_id, armor_id)
);

CREATE TABLE IF NOT EXISTS robe 
(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name varchar(50) UNIQUE,
    tier INT,
    hp INT,
    mp INT,
    att INT,
    def INT,
    spd INT,
    dex INT,
    vit INT,
    wis INT
);
INSERT INTO robe (name, tier, hp, mp, att, def, spd, dex, vit, wis) 
VALUES
('Robe of the Illusionist', 1, 0, 35,   1,   8,   0,   0,   0,   4),
('Robe of the Master',		2, 0, 40,   2,   9,   0,   0,   0,   5),
('Robe of the Magus',		2, 0, 45,   2,  10,   0,   0,   0,   5),
('Robe of the Moon',		3, 0, 50,   3,  11,   0,   0,   0,   6),
('Robe of the Warlock',		3, 0, 50,   3,  12,   0,   0,   0,   6),
('Robe of the Sorcerer',	4, 0, 55,   4,  13,   0,   0,   0,   6),
('Robe of the Mother',		5, 0, 65,   5,  15,   0,   0,   0,   7);

CREATE TABLE IF NOT EXISTS light_armor 
(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
	name varchar(50) UNIQUE,
    tier INT,
    hp INT,
    mp INT,
    att INT,
    def INT,
    spd INT,
    dex INT,
    vit INT,
    wis INT
);
INSERT INTO robe (name, tier, hp, mp, att, def, spd, dex, vit, wis) 
VALUES
('Studded Leather',			1, 0,  0,   0,  13,   0,   3,   0,   0),
('Drake Hide',				2, 0,  0,   0,  14,   0,   3,   0,   0),
('Roc Leather',				3, 0,  0,   0,  15,   0,   4,   0,   0),
('Hippogriff Hide',			4, 0,  0,   0,  16,   0,   4,   0,   0),
('Griffon Hide',			5, 0,  0,   0,  17,   0,   4,   0,   0),
('Hydra Skin',				6, 0,  0,   0,  17,   0,   5,   0,   0),
('Wyrmhide',				7, 0,  0,   0,  19,   0,   6,   0,   0);



CREATE TABLE IF NOT EXISTS heavy_armor
(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
	name varchar(50) UNIQUE,
    tier INT,
    hp INT,
    mp INT,
    att INT,
    def INT,
    spd INT,
    dex INT,
    vit INT,
    wis INT
);
INSERT INTO robe (name, tier, hp, mp, att, def, spd, dex, vit, wis) 
VALUES
('Mithril',					1, 0,  0,   0,  15,   0,   0,   0,   0),
('Dragonscale',				2, 0,  0,   0,  20,   0,   0,   0,   0),
('Desolation',				3, 0,  0,   0,  21,   0,   0,   0,   0),
('Vengance',				4, 0,  0,   0,  22,   0,   0,   0,   0),
('Abyssal',					5, 0,  0,   0,  23,   0,   0,   0,   0),
('Acropolis',				6, 0,  0,   0,  24,   0,   0,   0,   0),
('Dominion',				7, 0,  0,   0,  26,   0,   0,   0,   0);

-- not working so far

-- INSERT INTO class_armor (class_id, armor_id) VALUES
-- ((SELECT id FROM class WHERE name = 'Priest'),      (SELECT id FROM armor WHERE armor_type = 'robe')),
-- ((SELECT id FROM class WHERE name = 'Sorcerer'),    (SELECT id FROM armor WHERE armor_type = 'robe')),
-- ((SELECT id FROM class WHERE name = 'Summoner'),    (SELECT id FROM armor WHERE armor_type = 'robe')),
-- ((SELECT id FROM class WHERE name = 'Bard'),        (SELECT id FROM armor WHERE armor_type = 'robe')),
-- ((SELECT id FROM class WHERE name = 'Wizard'),      (SELECT id FROM armor WHERE armor_type = 'robe')),
-- ((SELECT id FROM class WHERE name = 'Necromancer'), (SELECT id FROM armor WHERE armor_type = 'robe')),
-- ((SELECT id FROM class WHERE name = 'Mystic'),      (SELECT id FROM armor WHERE armor_type = 'robe')),
-- ((SELECT id FROM class WHERE name = 'Archer'),      (SELECT id FROM armor WHERE armor_type = 'light_armor')),
-- ((SELECT id FROM class WHERE name = 'Huntress'),    (SELECT id FROM armor WHERE armor_type = 'light_armor')),
-- ((SELECT id FROM class WHERE name = 'Rogue'),       (SELECT id FROM armor WHERE armor_type = 'light_armor')),
-- ((SELECT id FROM class WHERE name = 'Assassin'),    (SELECT id FROM armor WHERE armor_type = 'light_armor')),
-- ((SELECT id FROM class WHERE name = 'Trickster'),   (SELECT id FROM armor WHERE armor_type = 'light_armor')),
-- ((SELECT id FROM class WHERE name = 'Warrior'),     (SELECT id FROM armor WHERE armor_type = 'heavy_armor')),
-- ((SELECT id FROM class WHERE name = 'Knight'),      (SELECT id FROM armor WHERE armor_type = 'heavy_armor')),
-- ((SELECT id FROM class WHERE name = 'Paladin'),     (SELECT id FROM armor WHERE armor_type = 'heavy_armor'));



-- CREATE TABLE IF NOT EXISTS class_weapon_type
-- (
--     class_id INTEGER,
--     weapon_type_id INTEGER,
--     FOREIGN KEY(class_id) REFERENCES class(id),
--     FOREIGN KEY(weapon_id) REFERENCES weapon(id),
--     PRIMARY KEY (class_id, weapon_id)
-- );