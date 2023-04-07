
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