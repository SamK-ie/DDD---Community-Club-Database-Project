Select * from Coach Where CoachID = 3;
Select * from TeamEvent Where EventID = 2;

Select Team.TeamName, Team.AgeGroup, Coach.CoachName
From team
Inner Join Coach On Team.teamID = Coach.TeamID;

Create View MembershipTeam as
Select MemberName, PositionPlayed, TeamID
From ClubMember
Where MembershipType = 'Player';

Select * From MembershipTeam;

Delete from TeamEvent Where EventID = 3;

Insert into Team (
TeamID, TeamName, AgeGroup)
values
(1, 'WAW Mens First Team', 'Senior'),
(2, 'WAW Mens Second Team', 'Senior'),
(3, 'U18s Boys Team', '16-18'),
(4, 'U16s Boys Team', '14-16'),
(5, 'Non Club Team', Null);
