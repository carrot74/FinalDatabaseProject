
create table Items
(
ItemID SERIAL not null,
ItemName varchar (255),
ItemInfo varchar(255),
ItemHP int,
ItemMP int,
ItemSP int,
ItemPP int,
ItemAS int,
ItemCS int,
primary key (ItemID)
);

create table Characters
(
CharacterID SERIAL not null,
CharacterName varchar (255) not null,
primary key (CharacterID)
);

create table Classes(
ClassID SERIAL not null,
ClassName varchar(255),
ClassInfo varchar(255),
ClassHP int,--Hitpoints
ClassHPPL int,--hitpoints per level (lost per level)
ClassMP int,
ClassMPPL int,
ClassSP int,
ClassSPPL int,
ClassPP int,
ClassPPPL int,
ClassAS int,
ClassASPL int,
ClassCS int,
ClassCSPL int,
primary key (ClassID)

);

create table MapChunk(
RChunkID SERIAL not null,
MapChunkName varchar(255),
MapChunkRating int,
primary key(MapChunkID)
);
create table Levels(
LevelID Serial not null,
LevelName varchar(255),
LevelRating int,
primary key(LevelID)
);

Create table Games(
GameID Serial not null,
score int,
primary key(GameID)
);

Create table People(
PeopleID SERIAL not null,
Name varchar(255),
Email varchar(255),
JoinDate DATE,
Primary Key(PeopleID)
);

Create table Admins(
PeopleID Int,
Foreign key (PeopleID) references People(PeopleID)
);

Create table Powers(
PowerID SERIAL not null,
PowerName varchar(255),
PowerDmg int,
PowerCD int,
PowerRange int,
PowerCost int,
Primary key(PowerID)
);

Create table Enemies(
EnemyID SERIAL not null,
EnemyName varchar(255),
EnemyInfo varchar(255),
EnemyType varchar(255),
EnemyHP int,
EnemyMP int,
EnemySP int,
EnemyPP int,
EnemyAS int,
EnemyCS int,
Primary key(EnemyID)
);


Create table EnemySkills(
ESkillsID SERIAL not null,
ESkillsName varchar(255),
ESkillsDMG int,
ESkillsCD int,
ESkillsRange int,
primary key(ESkillsID)
);

--inbetween tables
Create table Character_Items(
CharacterID int,
ItemID int,
Foreign Key (CharacterID) References Characters(CharacterID),
Foreign Key(ItemID) References Items(ItemID)
);

Create table Character_classes(
CharacterID int,
ClassID int,
Foreign Key (CharacterID) References Characters(CharacterID),
Foreign Key(ClassID) References Classes(ClassID)
);

Create table Character_Games(
CharacterID int,
GameID int unique,
Foreign Key (CharacterID) References Characters(CharacterID),
Foreign Key(GameID) References Games(GameID)
);

Create table People_Games(
GameID int unique,
PeopleID int,
Foreign Key (GameID) References Games(GameID),
Foreign Key(PeopleID) References People(PeopleID)
);

Create table Games_Levels(
GameID int,
LevelID int,
Foreign Key (GameID) References Games(GameID),
Foreign Key(LevelID) References Levels(LevelID)
);

Create table Classes_Powers(
ClassID int,
PowerID int,
Foreign Key (ClassID) References Classes(ClassID),
Foreign Key(PowerID) References Powers(PowerID)
);

Create table Eskills_Enemies(
ESkillsID int,
EnemyID int,
Foreign Key (ESkillsID) References EnemySkills(ESkillsID),
Foreign Key(EnemyID) References Enemies(EnemyID)
);

Create table Enemies_Levels(
EnemyID int,
LevelID int,
Foreign Key (EnemyID) References Enemies(EnemyID),
Foreign Key(LevelID) References Levels(LevelID)
);

Create table Kills_Game(
GameID int,
EnemyID int,
Foreign Key (GameID) References Games(GameID),
Foreign Key(EnemyID) References Enemies(EnemyID)
);

Create table Levels_Map_Chunks(
LevelID int,
MapChunkID int,
Foreign Key(LevelID) References Levels(LevelID),
Foreign Key(MapchunkID) References MapChunk(MapChunkID)
);
