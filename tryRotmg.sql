CREATE TABLE class
(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL UNIQUE
);
INSERT INTO class (name)
VALUES
('Wizard'),  ('Necromancer'), ('Mystic'),
('Priest'),  ('Sorcerer'),    ('Summoner'),
('Archer'),  ('Huntress'),    ('Bard'),
('Rogue'),   ('Assassin'),    ('Trickster'),
('Warrior'), ('Knight'),      ('Paladin');

CREATE TABLE IF NOT EXISTS stats (
    class_id INTEGER PRIMARY KEY,
    hp INT,
    mp INT,
    att INT,
    def INT,
    spd INT,
    dex INT,
    vit INT,
    wis INT,
    FOREIGN KEY (class_id) REFERENCES class(id)
);
INSERT INTO stats (class_id, hp, mp, att, def, spd, dex, vit, wis) 
VALUES
(1,  700, 385, 75, 25, 50, 75, 40, 60),
(2,  700, 385, 75, 25, 50, 60, 40, 75),
(3,  700, 385, 65, 25, 60, 65, 40, 75),
(4,  700, 385, 55, 25, 55, 60, 40, 75),
(5,  700, 385, 70, 25, 60, 60, 75, 60),
(6,  700, 385, 60, 25, 60, 75, 40, 75),
(7,  750, 252, 75, 25, 55, 50, 40, 50),
(8,  750, 305, 65, 25, 50, 60, 40, 60),
(9,  750, 385, 55, 25, 55, 70, 45, 75),
(10, 750, 252, 55, 25, 65, 75, 40, 50),
(11, 750, 305, 65, 25, 65, 75, 40, 60),
(12, 750, 252, 65, 25, 75, 75, 40, 60),
(13, 800, 252, 75, 25, 50, 50, 75, 50),
(14, 800, 252, 50, 40, 50, 50, 75, 50),
(15, 800, 252, 55, 30, 55, 55, 60, 75);


CREATE TABLE weapon 
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL UNIQUE,
    type TEXT NOT NULL,
    damage_min INTEGER NOT NULL,
    damage_max INTEGER NOT NULL,
    damage_ave REAL NOT NULL,
    proj_shot INTEGER NOT NULL,
    proj_range REAL NOT NULL
);
INSERT INTO weapon (name, type, damage_min, damage_max, damage_ave, proj_shot, proj_range) 
VALUES
('Staff of Destruction',        'Staff',    45,  85,  65.0, 2, 8.55),
('Staff of Horror',             'Staff',    50,  90,  70.0, 2, 8.55),
('Staff of Necrotic Arcana',    'Staff',    50,  95,  72.5, 2, 8.55),
('Staff of Diabolic Secrets',   'Staff',    55,  95,  75.0, 2, 8.55),
('Staff of Astral Knowledge',   'Staff',    55, 100,  77.5, 2, 8.55),
('Staff of the Cosmic Whole',   'Staff',    60, 100,  80.0, 2, 8.55),
('Staff of the Vital Unity',    'Staff',    65, 110,  87.5, 2, 8.55),
('Wand of Arcane Flame',        'Wand',    110, 140, 125.0, 1, 9),
('Wand of Death',               'Wand',    115, 155, 135.0, 1, 9),
('Wand of Deep Sorcery',        'Wand',    120, 160, 140.0, 1, 9),
('Wand of Shadow',              'Wand',    125, 165, 145.0, 1, 9),
('Wand of Warning',             'Wand',    125, 170, 147.5, 1, 9),
('Wand of Recompense',          'Wand',    130, 175, 152.5, 1, 9),
('Wand of Evocation',           'Wand',    145, 180, 162.5, 1, 9),
('Redwood Bow',                 'Bow',     105, 135, 120.0, 3, 7.04),
('Golden Bow',                  'Bow',     125, 155, 140.0, 3, 7.04),
('Verdant Bow',                 'Bow',     135, 165, 150.0, 3, 7.04),
('Fey Magic',                   'Bow',     155, 185, 170.0, 3, 7.04),
('Innocent Blood',              'Bow',     165, 195, 180.0, 3, 7.04),
('Covert Havens',               'Bow',     175, 205, 190.0, 3, 7.04),
('Mystical Energy',             'Bow',     205, 235, 220.0, 3, 7.04),
('Mithril Dagger',              'Dagger',   70, 140, 105.0, 1, 5.6),
('Fire Dagger',                 'Dagger',   85, 155, 120.0, 1, 5.6),
('Ragetalon Dagger',            'Dagger',   95, 165, 130.0, 1, 5.6),
('Emerald Dagger',              'Dagger',  100, 175, 137.0, 1, 5.6),
('Agateclaw Dagger',            'Dagger',  105, 190, 147.0, 1, 5.6),
('Foul Malevolence',            'Dagger',  115, 200, 157.0, 1, 5.6),
('Sinister Deeds',              'Dagger',  125, 220, 172.0, 1, 5.6),
('Golden Sword',                'Sword',   150, 180, 165.0, 1, 3.5),
('Ravenheart Sword',            'Sword',   180, 255, 217.0, 1, 3.5),
('Dragonsoul Sword',            'Sword',   195, 255, 225.0, 1, 3.5),
('Archon Sword',                'Sword',   210, 255, 232.0, 1, 3.5),
('Skysplitter Sword',           'Sword',   210, 270, 240.0, 1, 3.5),
('Sword of Acclaim',            'Sword',   220, 275, 247.0, 1, 3.5),
('Sword of Splendor',           'Sword',   235, 290, 262.0, 1, 3.5);


CREATE TABLE class_weapon 
(
    class_id INTEGER,
    weapon_type TEXT,
    PRIMARY KEY (class_id, weapon_type),
    FOREIGN KEY (class_id) REFERENCES class(id)
);
INSERT INTO class_weapon (class_id, weapon_type) 
VALUES
(1, 'Staff'),
(2, 'Wand'),
(3, 'Wand'),
(4, 'Bow'),
(5, 'Dagger'),
(6, 'Dagger'),
(7, 'Sword'),
(8, 'Sword');

CREATE TABLE weapon_stat_boosts 
(
    weapon_id INTEGER,
    stat_name TEXT,
    stat_value INTEGER,
    PRIMARY KEY (weapon_id, stat_name),
    FOREIGN KEY (weapon_id) REFERENCES weapon(id)
);
INSERT INTO weapon_stat_boosts (weapon_id, stat_name, stat_value)
VALUES
(1, 'ATT', 5),   -- Staff of Destruction gives +5 ATT
(8, 'DEX', 3);   -- Wand of Arcane Flame gives +3 DEX