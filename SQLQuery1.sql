CREATE TABLE Folders (
    FolderID int,
	AudienceID int,
    FolderName varchar(255),
    LevelID int
);


 INSERT INTO Folders (FolderID, AudienceID, FolderName, LevelID)
VALUES (10, 1, 'Folder A1', 1);

 INSERT INTO Folders (FolderID, AudienceID, FolderName, LevelID)
VALUES (11, 1, 'Folder A2', 2);

 INSERT INTO Folders (FolderID, AudienceID, FolderName, LevelID)
VALUES (12, 1, 'Folder A3', 3);

 INSERT INTO Folders (FolderID, AudienceID, FolderName, LevelID)
VALUES (13, 1, 'Folder A4', 4);



 INSERT INTO Folders (FolderID, AudienceID, FolderName, LevelID)
VALUES (14, 2, 'Folder B1', 1);

 INSERT INTO Folders (FolderID, AudienceID, FolderName, LevelID)
VALUES (15, 2, 'Folder B2', 2);

 INSERT INTO Folders (FolderID, AudienceID, FolderName, LevelID)
VALUES (16, 2, 'Folder B3', 3);

 INSERT INTO Folders (FolderID, AudienceID, FolderName, LevelID)
VALUES (17, 2, 'Folder B4', 4);


Select * from Folders










Truncate table Folder

Drop Table Folder

CREATE table Folder
    ([Id] int, [AId] int, [FolderName] varchar(100), [Level] varchar(13))
;
    



INSERT INTO Folder
    ([Id], [AId], [FolderName], [Level])
VALUES
    (1, 1,  'A1', 'Level1'),
    (2, 1, 'A2', 'Level2'),
    (3, 1, 'A3', 'Level3'),
    (4, 1, 'A4', 'Level4'),
    (5, 1, 'A5', 'Level5')
;

  
INSERT INTO Folder
    ([Id], [AId], [FolderName], [Level])
VALUES
    (6, 2,  'B1', 'Level1'),
    (7, 2, 'B2', 'Level2'),
    (8, 2, 'B3', 'Level3'),
    (9, 2, 'B4', 'Level4'),
    (10, 2, 'B5', 'Level5')
;


INSERT INTO Folder
    ([Id], [AId], [FolderName], [Level])
VALUES
    (11, 3,  'C1', 'Level1'),
    (12, 3, 'C2', 'Level2'),
    (13, 3, 'C3', 'Level3'),
    (14, 3, 'C4', 'Level4')
;




select AId, Level1, Level2, Level3, Level4, Level5
from
(
  select AId, FolderName, Level
  from Folder
) d
pivot
(
  max(FolderName)
  for Level in (Level1, Level2, Level3, Level4, Level5)
) piv;