--ITEMS
INSERT INTO Items( ItemName,ItemInfo, ItemHP, ItemMP, ItemSP, ItemPP, ItemAS, ItemCS)
  VALUES('Demonic Longsword','This sword swirls with evil energy',90,20,10,10,20,50);
INSERT INTO Items( ItemName,ItemInfo, ItemHP, ItemMP, ItemSP, ItemPP, ItemAS, ItemCS)
  VALUES('Book of the Dead','An empty book',0,200,100,0,00,500);
INSERT INTO Items( ItemName,ItemInfo, ItemHP, ItemMP, ItemSP, ItemPP, ItemAS, ItemCS)
  VALUES('Flabbos Leg of Meat','A leg of ham. Why are you using this',1000,0,0,0,0,0);
INSERT INTO Items( ItemName,ItemInfo, ItemHP, ItemMP, ItemSP, ItemPP, ItemAS, ItemCS)
  VALUES('BB gun','You ll shoot yer eye out',0,0,10,0,500,0);
INSERT INTO Items( ItemName,ItemInfo, ItemHP, ItemMP, ItemSP, ItemPP, ItemAS, ItemCS)
  VALUES('Slingshot','Some weapon you stole from a small child.',0,0,0,140,120,0);
-- Classes
INSERT INTO Classes( ClassName, ClassInfo, ClassHP, ClassHPPL, ClassMP,ClassMPPL,ClassSP,ClassSPPL,ClassPP,ClassPPPL,ClassAS,ClassASPL,ClassCS,ClassCSPL)
  VALUES('Bacon Mage','All the powers of bacon are at your disposal',100,10,20,30,10,10,10,10,10,10,10,10);
INSERT INTO Classes( ClassName, ClassInfo, ClassHP, ClassHPPL, ClassMP,ClassMPPL,ClassSP,ClassSPPL,ClassPP,ClassPPPL,ClassAS,ClassASPL,ClassCS,ClassCSPL)
  VALUES('Onion Knight','Your prowess to make the breath of enemies smell is unmatched',200,130,210,310,110,110,110,110,120,150,110,120);
INSERT INTO Classes( ClassName, ClassInfo, ClassHP, ClassHPPL, ClassMP,ClassMPPL,ClassSP,ClassSPPL,ClassPP,ClassPPPL,ClassAS,ClassASPL,ClassCS,ClassCSPL)
  VALUES('Vampire Archer','You.Do.Not.Sparkle',1000,10,10,30,70,20,1320,140,160,110,120,10);
INSERT INTO Classes( ClassName, ClassInfo, ClassHP, ClassHPPL, ClassMP,ClassMPPL,ClassSP,ClassSPPL,ClassPP,ClassPPPL,ClassAS,ClassASPL,ClassCS,ClassCSPL)
  VALUES('Mage','What? Thats it?',100,1330,420,3560,1650,540,1560,140,160,10,10,100);
INSERT INTO Classes( ClassName, ClassInfo, ClassHP, ClassHPPL, ClassMP,ClassMPPL,ClassSP,ClassSPPL,ClassPP,ClassPPPL,ClassAS,ClassASPL,ClassCS,ClassCSPL)
  VALUES('Innocent Bystander','You dont know why youre here, but you really feel like you should start running',1300,160,220,350,810,510,810,140,120,120,120,140);
INSERT INTO Classes( ClassName, ClassInfo, ClassHP, ClassHPPL, ClassMP,ClassMPPL,ClassSP,ClassSPPL,ClassPP,ClassPPPL,ClassAS,ClassASPL,ClassCS,ClassCSPL)
  VALUES('Shadow','Youre what happens when an object blocks rays of light',1200,170,280,330,10,130,10,1550,10,1880,10,130);
--Map Chunks
INSERT INTO MapChunk(MapChunkName, MapChunkRating)
  VALUES('Alter',2);
INSERT INTO MapChunk(MapChunkName, MapChunkRating)
  VALUES('Dessert',1);
INSERT INTO MapChunk(MapChunkName, MapChunkRating)
  VALUES('Desert',3);
INSERT INTO MapChunk(MapChunkName, MapChunkRating)
  VALUES('Dark Musty Bathroom',4);
INSERT INTO MapChunk(MapChunkName, MapChunkRating)
  VALUES('Boss Room',5);
INSERT INTO MapChunk(MapChunkName, MapChunkRating)
  VALUES('Woods',2);
INSERT INTO MapChunk(MapChunkName, MapChunkRating)
  VALUES('Cow Level',12);

--Levels
INSERT INTO Levels(LevelName, LevelRating)
  VALUES('Desert or Dessert?',10);
INSERT INTO Levels(LevelName, LevelRating)
  VALUES('Cow Level',12);
INSERT INTO Levels(LevelName, LevelRating)
  VALUES('Dreams',8);
INSERT INTO Levels(LevelName, LevelRating)
  VALUES('To the End',17);

--Characters
INSERT INTO Characters(CharacterName)
  VALUES('Jimbo');
INSERT INTO Characters(CharacterName)
  VALUES('Salami Sam');
INSERT INTO Characters(CharacterName)
  VALUES('Bacon Barry');
INSERT INTO Characters(CharacterName)
  VALUES('Cherry Canute');
INSERT INTO Characters(CharacterName)
  VALUES('Shrimp Shrek');
INSERT INTO Characters(CharacterName)
  VALUES('Salad Sally');
-- Games
INSERT INTO Games(score)
  VALUES(123242);
INSERT INTO Games(score)
  VALUES(123242422);
INSERT INTO Games(score)
  VALUES(1252522);
INSERT INTO Games(score)
  VALUES(633733);
INSERT INTO Games(score)
  VALUES(99999);
INSERT INTO Games(score)
  VALUES(6666666);
INSERT INTO Games(score)
  VALUES(0);
--People Name 
INSERT INTO People( Name, Email, JoinDate)
  VALUES('Richard', 'Richard@gmail.com','10/10/1010');
INSERT INTO People( Name, Email, JoinDate)
  VALUES('Ricardo', 'Ricardo@gmail.com','12/13/2110');
INSERT INTO People( Name, Email, JoinDate)
  VALUES('Richy Rich', 'RichyR321@gmail.com','1/4/10010');
INSERT INTO People( Name, Email, JoinDate)
  VALUES('Dick', 'HamMan@gmail.com','11/10/6010');
INSERT INTO People( Name, Email, JoinDate)
  VALUES('Rich', 'Rich321@gmail.com','9/10/2010');
INSERT INTO People( Name, Email, JoinDate)
  VALUES('Richy', 'R61345@gmail.com','3/23/2000');
--Admins
INSERT INTO Admins(PeopleID)
	VALUES(1);
INSERT INTO Admins(PeopleID)
	VALUES(2);
--Enemies
INSERT INTO Enemies(EnemyName, EnemyInfo, EnemyType, EnemyHP, EnemyMP, EnemySp, EnemyPP, EnemyAS, EnemyCS)
  VALUES('Cat','Looks like a cat. Sounds like a cat. Is a cat','Ranged',10,0,0,0,0,0);
INSERT INTO Enemies(EnemyName, EnemyInfo, EnemyType, EnemyHP, EnemyMP, EnemySp, EnemyPP, EnemyAS, EnemyCS)
  VALUES('Destroyer of World','Admittedly small worlds, but worlds none the less','Melee',10,50,40,30,90,10);
INSERT INTO Enemies(EnemyName, EnemyInfo, EnemyType, EnemyHP, EnemyMP, EnemySp, EnemyPP, EnemyAS, EnemyCS)
  VALUES('Mind Slug','Eats the minds of youths. Also connects users wirelessly and cheaply!','Magic',10,30,760,10,160,30);
INSERT INTO Enemies(EnemyName, EnemyInfo, EnemyType, EnemyHP, EnemyMP, EnemySp, EnemyPP, EnemyAS, EnemyCS)
  VALUES('Explosive Elemental','EXPLODES.DONT TOUCH. BOOM','Magic',30,30,60,10,70,240);
INSERT INTO Enemies(EnemyName, EnemyInfo, EnemyType, EnemyHP, EnemyMP, EnemySp, EnemyPP, EnemyAS, EnemyCS)
  VALUES('Reverse Centaur','Half man, half horse. Looks a bit lopsided','Magic',240,2404,470,2470,850,10);
INSERT INTO Enemies(EnemyName, EnemyInfo, EnemyType, EnemyHP, EnemyMP, EnemySp, EnemyPP, EnemyAS, EnemyCS)
  VALUES('Scythe Wielding maniac','Cuts people like wheat','Melee',840,560,960,960,30,20);
INSERT INTO Enemies(EnemyName, EnemyInfo, EnemyType, EnemyHP, EnemyMP, EnemySp, EnemyPP, EnemyAS, EnemyCS)
  VALUES('Glass Cannon','Doesnt even shoot the cannon ball far...','Ranged',970,450,450,220,20,20);
INSERT INTO Enemies(EnemyName, EnemyInfo, EnemyType, EnemyHP, EnemyMP, EnemySp, EnemyPP, EnemyAS, EnemyCS)
  VALUES('Pots','The mortal enemy of a particular adventurer.','Melee',240,720,230,830,3580,350);
INSERT INTO Enemies(EnemyName, EnemyInfo, EnemyType, EnemyHP, EnemyMP, EnemySp, EnemyPP, EnemyAS, EnemyCS)
  VALUES('The Black Knight','Pretty much immortal. Dismemberment does nothing.','Melee',35,350,220,30,220,20);
--EnemySkills
INSERT INTO EnemySkills(ESkillsName, ESkillsDMG, ESkillsCD, ESkillsRange)
  VALUES('Dark Touch',10,0,110);
INSERT INTO EnemySkills(ESkillsName, ESkillsDMG, ESkillsCD, ESkillsRange)
  VALUES('Dark Blast',100,10,10);
INSERT INTO EnemySkills(ESkillsName, ESkillsDMG, ESkillsCD, ESkillsRange)
  VALUES('Dark Ascension',1000,20,10);
INSERT INTO EnemySkills(ESkillsName, ESkillsDMG, ESkillsCD, ESkillsRange)
  VALUES('Dark Dark',110,0,110);
  
INSERT INTO EnemySkills(ESkillsName, ESkillsDMG, ESkillsCD, ESkillsRange)
  VALUES('Arrow Shower',1101,10,160);
INSERT INTO EnemySkills(ESkillsName, ESkillsDMG, ESkillsCD, ESkillsRange)
  VALUES('Fire Arrow',50,5,110);
INSERT INTO EnemySkills(ESkillsName, ESkillsDMG, ESkillsCD, ESkillsRange)
  VALUES('Barbed Arrow',110,0,1110);
INSERT INTO EnemySkills(ESkillsName, ESkillsDMG, ESkillsCD, ESkillsRange)
  VALUES('Explosive Arrow',1150,0,2110);
  
INSERT INTO EnemySkills(ESkillsName, ESkillsDMG, ESkillsCD, ESkillsRange)
  VALUES('Hide',0,0,0);
INSERT INTO EnemySkills(ESkillsName, ESkillsDMG, ESkillsCD, ESkillsRange)
  VALUES('Do nothing',0,0,0);
INSERT INTO EnemySkills(ESkillsName, ESkillsDMG, ESkillsCD, ESkillsRange)
  VALUES('Avoid Danger',0,0,0);
INSERT INTO EnemySkills(ESkillsName, ESkillsDMG, ESkillsCD, ESkillsRange)
  VALUES('Self Preservation',0,0,0);
--Powers(Hero)
INSERT INTO Powers(PowerName, PowerDMG, PowerCD, PowerRange,PowerCost)
  VALUES('Laser of Death',12230,5,100,500);
INSERT INTO Powers(PowerName, PowerDMG, PowerCD, PowerRange,PowerCost)
  VALUES('Death',9999999,0,100,5020);
INSERT INTO Powers(PowerName, PowerDMG, PowerCD, PowerRange,PowerCost)
  VALUES('Ham Slap',240,150,2500,1200);
INSERT INTO Powers(PowerName, PowerDMG, PowerCD, PowerRange,PowerCost)
  VALUES('Onion Breath',120,60,300,100);
INSERT INTO Powers(PowerName, PowerDMG, PowerCD, PowerRange,PowerCost)
  VALUES('Lightning Aura',25203,0,30,300);
INSERT INTO Powers(PowerName, PowerDMG, PowerCD, PowerRange,PowerCost)
  VALUES('Blend and stab',50,10,20,10);
INSERT INTO Powers(PowerName, PowerDMG, PowerCD, PowerRange,PowerCost)
  VALUES('Corpse Explosion',1000,10,320,100);
INSERT INTO Powers(PowerName, PowerDMG, PowerCD, PowerRange,PowerCost)
  VALUES('Corpse rotation',0,0,110,300);
--Character_Items
INSERT INTO Character_Items(CharacterID,ItemID)
  VALUES(1,1);
INSERT INTO Character_Items(CharacterID,ItemID)
  VALUES(2,1);
INSERT INTO Character_Items(CharacterID,ItemID)
  VALUES(1,2);
INSERT INTO Character_Items(CharacterID,ItemID)
  VALUES(2,2);
INSERT INTO Character_Items(CharacterID,ItemID)
  VALUES(3,4);
 INSERT INTO Character_Items(CharacterID,ItemID)
  VALUES(1,3);
INSERT INTO Character_Items(CharacterID,ItemID)
  VALUES(6,1);
INSERT INTO Character_Items(CharacterID,ItemID)
  VALUES(5,5);
INSERT INTO Character_Items(CharacterID,ItemID)
  VALUES(4,4);
--Classes_Powers
INSERT INTO Classes_Powers(ClassID,PowerID)
  VALUES(1,1);
INSERT INTO Classes_Powers(ClassID,PowerID)
  VALUES(1,2);
INSERT INTO Classes_Powers(ClassID,PowerID)
  VALUES(1,3);
INSERT INTO Classes_Powers(ClassID,PowerID)
  VALUES(1,4);
INSERT INTO Classes_Powers(ClassID,PowerID)
  VALUES(2,1);
INSERT INTO Classes_Powers(ClassID,PowerID)
  VALUES(2,8);
INSERT INTO Classes_Powers(ClassID,PowerID)
  VALUES(2,4);
INSERT INTO Classes_Powers(ClassID,PowerID)
  VALUES(3,5);
INSERT INTO Classes_Powers(ClassID,PowerID)
  VALUES(4,7);
INSERT INTO Classes_Powers(ClassID,PowerID)
  VALUES(3,6);
INSERT INTO Classes_Powers(ClassID,PowerID)
  VALUES(5,3);
INSERT INTO Classes_Powers(ClassID,PowerID)
  VALUES(5,5);
INSERT INTO Classes_Powers(ClassID,PowerID)
  VALUES(6,4);
INSERT INTO Classes_Powers(ClassID,PowerID)
  VALUES(6,5);  
--Character_Classes
INSERT INTO Character_Classes(ClassID,CharacterID)
  VALUES(1,1);
INSERT INTO Character_Classes(ClassID,CharacterID)
  VALUES(1,3);
INSERT INTO Character_Classes(ClassID,CharacterID)
  VALUES(2,2);
INSERT INTO Character_Classes(ClassID,CharacterID)
  VALUES(3,5);
INSERT INTO Character_Classes(ClassID,CharacterID)
  VALUES(3,4);
INSERT INTO Character_Classes(ClassID,CharacterID)
  VALUES(6,4);   
INSERT INTO Character_Classes(ClassID,CharacterID)
  VALUES(4,2);
INSERT INTO Character_Classes(ClassID,CharacterID)
  VALUES(4,4);
INSERT INTO Character_Classes(ClassID,CharacterID)
  VALUES(5,4);
INSERT INTO Character_Classes(ClassID,CharacterID)
  VALUES(5,1);
--Character_Games
INSERT INTO Character_Games(GameID, CharacterID)
  VALUES(7,6);
INSERT INTO Character_Games(GameID, CharacterID)
  VALUES(1,1);
INSERT INTO Character_Games(GameID, CharacterID)
  VALUES(2,2);
INSERT INTO Character_Games(GameID, CharacterID)
  VALUES(3,3);
INSERT INTO Character_Games(GameID, CharacterID)
  VALUES(4,6);
INSERT INTO Character_Games(GameID, CharacterID)
  VALUES(5,4);
INSERT INTO Character_Games(GameID, CharacterID)
  VALUES(6,5);
--Games_Levels
INSERT INTO Games_Levels(GameID, LevelID)
  VALUES(7,4);
INSERT INTO Games_Levels(GameID, LevelID)
  VALUES(6,4);
INSERT INTO Games_Levels(GameID, LevelID)
  VALUES(7,3);
INSERT INTO Games_Levels(GameID, LevelID)
  VALUES(6,1);
INSERT INTO Games_Levels(GameID, LevelID)
  VALUES(5,3);
INSERT INTO Games_Levels(GameID, LevelID)
  VALUES(5,1);
INSERT INTO Games_Levels(GameID, LevelID)
  VALUES(4,4);
INSERT INTO Games_Levels(GameID, LevelID)
  VALUES(4,3);
INSERT INTO Games_Levels(GameID, LevelID)
  VALUES(3,1);
INSERT INTO Games_Levels(GameID, LevelID)
  VALUES(3,4);
INSERT INTO Games_Levels(GameID, LevelID)
  VALUES(2,4);
INSERT INTO Games_Levels(GameID, LevelID)
  VALUES(2,3);
INSERT INTO Games_Levels(GameID, LevelID)
  VALUES(1,1);
INSERT INTO Games_Levels(GameID, LevelID)
  VALUES(1,2);  
--ESkills_Enemy
INSERT INTO ESkills_Enemies(EnemyID, ESkillsID)
  VALUES(1,2);  
INSERT INTO ESkills_Enemies(EnemyID, ESkillsID)
  VALUES(1,3);  
INSERT INTO ESkills_Enemies(EnemyID, ESkillsID)
  VALUES(2,4);  
INSERT INTO ESkills_Enemies(EnemyID, ESkillsID)
  VALUES(2,3);  
INSERT INTO ESkills_Enemies(EnemyID, ESkillsID)
  VALUES(3,5);  
INSERT INTO ESkills_Enemies(EnemyID, ESkillsID)
  VALUES(3,8); 
INSERT INTO ESkills_Enemies(EnemyID, ESkillsID)
  VALUES(4,9);
INSERT INTO ESkills_Enemies(EnemyID, ESkillsID)
  VALUES(5,10);
INSERT INTO ESkills_Enemies(EnemyID, ESkillsID)
  VALUES(6,11);
INSERT INTO ESkills_Enemies(EnemyID, ESkillsID)
  VALUES(7,12);
INSERT INTO ESkills_Enemies(EnemyID, ESkillsID)
  VALUES(8,1);
INSERT INTO ESkills_Enemies(EnemyID, ESkillsID)
  VALUES(9,2);    
INSERT INTO ESkills_Enemies(EnemyID, ESkillsID)
  VALUES(9,12);  
--Enemies_Levels
INSERT INTO Enemies_Levels(EnemyID, LevelID)
  VALUES(9,4); 
INSERT INTO Enemies_Levels(EnemyID, LevelID)
  VALUES(8,4);
INSERT INTO Enemies_Levels(EnemyID, LevelID)
  VALUES(7,2);
INSERT INTO Enemies_Levels(EnemyID, LevelID)
  VALUES(6,3);
INSERT INTO Enemies_Levels(EnemyID, LevelID)
  VALUES(5,4);
INSERT INTO Enemies_Levels(EnemyID, LevelID)
  VALUES(4,3);
INSERT INTO Enemies_Levels(EnemyID, LevelID)
  VALUES(3,1);
INSERT INTO Enemies_Levels(EnemyID, LevelID)
  VALUES(2,4);
INSERT INTO Enemies_Levels(EnemyID, LevelID)
  VALUES(1,1);   
--Kills_Game
INSERT INTO Kills_Game(GameID,EnemyID)
  VALUES(7,9); 
INSERT INTO Kills_Game(GameID,EnemyID)
  VALUES(6,8); 
INSERT INTO Kills_Game(GameID,EnemyID)
  VALUES(5,7); 
INSERT INTO Kills_Game(GameID,EnemyID)
  VALUES(4,6); 
INSERT INTO Kills_Game(GameID,EnemyID)
  VALUES(3,5); 
INSERT INTO Kills_Game(GameID,EnemyID)
  VALUES(2,4); 
INSERT INTO Kills_Game(GameID,EnemyID)
  VALUES(1,3);
INSERT INTO Kills_Game(GameID,EnemyID)
  VALUES(2,3);  
INSERT INTO Kills_Game(GameID,EnemyID)
  VALUES(4,5);
INSERT INTO Kills_Game(GameID,EnemyID)
  VALUES(5,7);   
--People_Games
INSERT INTO People_games(GameID,PeopleID)
  VALUES(7,6); 
INSERT INTO People_games(GameID,PeopleID)
  VALUES(6,6); 
INSERT INTO People_games(GameID,PeopleID)
  VALUES(5,5); 
INSERT INTO People_games(GameID,PeopleID)
  VALUES(4,4);
INSERT INTO People_games(GameID,PeopleID)
  VALUES(3,3);
INSERT INTO People_games(GameID,PeopleID)
  VALUES(2,2);
INSERT INTO People_games(GameID,PeopleID)
  VALUES(1,1);   
--Levels_Map_Chunks
--1,1 1,3 1,5  2,2 2,3 2,4 2,5 3,1 3,2 3,3 3,6  4,7 4,5
INSERT INTO Levels_Map_Chunks(LevelID, MapChunkID)
  VALUES(1,1);
INSERT INTO Levels_Map_Chunks(LevelID, MapChunkID)
  VALUES(1,3);
INSERT INTO Levels_Map_Chunks(LevelID, MapChunkID)
  VALUES(1,5);
INSERT INTO Levels_Map_Chunks(LevelID, MapChunkID)
  VALUES(2,2);
INSERT INTO Levels_Map_Chunks(LevelID, MapChunkID)
  VALUES(2,3);
INSERT INTO Levels_Map_Chunks(LevelID, MapChunkID)
  VALUES(2,4);
INSERT INTO Levels_Map_Chunks(LevelID, MapChunkID)
  VALUES(2,5);
INSERT INTO Levels_Map_Chunks(LevelID, MapChunkID)
  VALUES(3,1);
INSERT INTO Levels_Map_Chunks(LevelID, MapChunkID)
  VALUES(3,2);
INSERT INTO Levels_Map_Chunks(LevelID, MapChunkID)
  VALUES(3,3);
INSERT INTO Levels_Map_Chunks(LevelID, MapChunkID)
  VALUES(3,6);
INSERT INTO Levels_Map_Chunks(LevelID, MapChunkID)
  VALUES(4,7);
INSERT INTO Levels_Map_Chunks(LevelID, MapChunkID)
  VALUES(4,5);
  
  