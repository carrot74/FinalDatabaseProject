--Finds all map Chunks in all the levels
Select distinct L.LevelName, m.MapChunkName
FROM Levels l, Levels_Map_Chunks lmc, Mapchunk m
Where l.LevelID=lmc.LevelID 
	and m.MapchunkID=lmc.MapchunkID
	
--Finds All the players and their scores
Select PlayerName, score
From Games g, players p, players_games pg
Where p.PlayerID =pg.playerID 
	and g.gameID =pg.gameID
ORDER BY score desc

--Shows all characters and their items 
Select CharacterName, ItemName
From Items I, Characters c, Character_Items CI
WHERE I.ItemID=CI.ItemID
	and c.CharacterID=CI.CharacterID
Order By Charactername desc

--Show all characters and their classes
SELECT distinct CharacterName, ClassName
From Classes CL, Characters C, Character_Classes CC
WHERE C.CharacterID=CC.CharacterID
	and CL.ClassID=CC.CLassID
Order by CharacterName desc

--Show all characters and their classes and items
	Drop View if exists CharClass;
	Create View CharClass as( SELECT distinct c.CharacterID,CharacterName, ClassName
				From Classes CL, Characters C, Character_Classes CC
				Where C.CharacterID=CC.CharacterID
					and CL.ClassID=CC.ClassID
	Order By CharacterName Desc);

	Drop View if Exists CharItem;
	Create View CharItem as(
		Select C.CharacterID ,CharacterName, ItemName
		From Items I, Characters c, Character_Items CI
		WHERE I.ItemID=CI.ItemID
			and c.CharacterID=CI.CharacterID
		Order By Charactername desc
	);

SELECT distinct CharItem.CharacterName, ClassName, ItemName
From CharClass inner join CharItem on CharClass.CharacterID=CharItem.CharacterID
Where CharItem.CharacterID=CharClass.CharacterID
Order by CharItem.CharacterName desc

--View players and their games, kills, and scores
Drop View if exists KillsGame;
Create View KillsGame as( Select GameID,Count(EnemyID) as KGcount
			From Kills_game
			Group by GameID);


Select P.Name, g.GameID, KillsGame.KgCount, score
From People p, Games g, People_Games PG, KillsGame
Where P.PeopleID=PG.PeopleID
	and g.GameID=PG.GameID
	and g.GameID=KillsGame.GameID
Order By G.GameID desc

-- shows enemies, the levels they are on, and their skills
Select distinct E.EnemyName, EL.LevelID, ES.ESkillsID
From ESkills_Enemies ESE, Enemies E, Enemies_Levels EL, Levels L, EnemySkills ES
Where ESE.EskillsID = ES.EskillsID
	and E.EnemyID=EL.EnemyID
	and ESE.EnemyID=EL.EnemyID
	
	
--Admins 
Select *
From People
Where PeopleID in(	
	Select PeopleID
	From admins
	);
--Views
select * from killsgame
Drop View if exists KillsGame;
Create View KillsGame as( Select kg.GameID,g.score,Count(EnemyID) as KGcount
			From Kills_game kg, games g
			where kg.GameID=g.gameID
			Group by kg.GameID,g.score);
			
	Drop View if exists CharClass;
	Create View CharClass as( SELECT distinct c.CharacterID,CharacterName, ClassName
				From Classes CL, Characters C, Character_Classes CC
				Where C.CharacterID=CC.CharacterID
					and CL.ClassID=CC.ClassID
	Order By CharacterName Desc);

	Drop View if Exists CharItem;
	Create View CharItem as(
		Select C.CharacterID ,CharacterName, ItemName
		From Items I, Characters c, Character_Items CI
		WHERE I.ItemID=CI.ItemID
			and c.CharacterID=CI.CharacterID
		Order By Charactername desc
	);
	Drop view if exists levelsRatingCheck;
  	Create view levelsRatingCheck as (Select  lmc.levelId as ID, sum(MapChunkRating) as check
                                     From MapChunk m, levels l, Levels_Map_Chunks lmc
                                     Where l.LevelID=lmc.LevelId
                                     and m.mapchunkID=lmc.mapchunkID
                                     Group by lmc.levelID
                                     Order by lmc.levelID);
	
	--Attempted stored procedure/ trigger
	
CREATE OR REPLACE FUNCTION levelMapChunks() 
returns trigger as $$ 
Declare
	CurrlevelID  INT;
BEGIN
 IF (L.LevelRating not in (Select lrc.check
			   From levelsRatingCheck lrc)
                                     ) 
From levelsRatingCheck LRC, Levels L, CurrLevel CL
Where L.LevelID = CurrLevelID and LRC.ID=CurrLevelID


THEN 
DELETE from Levels_Map_Chunks
WHERE L.LevelRating not in (Select lrc.check
			   From levelsRatingCheck lrc); 
END if;
 Return new;
END
 $$LANGUAGE plpgsql;
 
Drop trigger If Exists RatingCheck On Levels_Map_Chunks;
Create Trigger RatingCheck 
After Insert or Update
 On Levels_Map_Chunks
 FOR EACH ROW Execute Procedure levelMapChunks();

INSERT INTO Levels_Map_Chunks(LevelID, MapChunkID)
  VALUES(1,3)Returning LevelID  as CurrLevelID ;

Select * from Levels_Map_Chunks

	Drop view if exists CurrLevel;
	Create view CurrLevel as (Select Currval(LMC.levelID) From Levels_Map_Chunks LMC);

	Drop view if exists levelsRatingCheck;
  	Create view levelsRatingCheck as (Select  lmc.levelId as ID, sum(MapChunkRating) as check
                                     From MapChunk m, levels l, Levels_Map_Chunks lmc
                                     Where l.LevelID=lmc.LevelId
                                     and m.mapchunkID=lmc.mapchunkID
                                     Group by lmc.levelID
                                     Order by lmc.levelID);
--GRANTS
Create user Admin With Password 'admin';