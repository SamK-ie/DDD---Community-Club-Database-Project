Create Table Team (
TeamID Int Not Null,
TeamName CHAR(50),
AgeGroup Char(50),
Primary Key (TeamID)
);

Create Table GameMatch (
MatchID Int Not Null,
HomeTeamID Int Not Null,
AwayTeamID Int Not Null,
MatchDate date,
Venue CHAR(50),
Result CHAR(50),
Primary key (MatchID),
Foreign key (HomeTeamID) References Team (TeamID),
Foreign key (AwayTeamID) References Team (TeamID)
);

Create Table Coach (
CoachID Int Not Null,
CoachName Char(50),
ContactInfo CHAR(30),
Certification CHAR(100),
Specialisation Char(100),
TeamID int Not Null,
Primary key (CoachID),
Foreign Key (TeamID) References Team (TeamID)
);

Create Table TeamEvent (
EventID Int Not Null,
EventName CHAR(100),
EventType Char(100),
EventDate date,
Location Char(100),
CoachID Int Not Null,
Primary key (EventID),
Foreign Key (CoachID) References Coach (CoachID)
);

Create Table ClubMember (
MemberID Int Not Null,
TeamID Int Not Null,
MemberName CHAR(50),
ContactInfo Char(30),
DateOfBirth Date,
JoinDate date,
MembershipType Char(50),
PositionPlayed Char(50),
Primary key (MemberID),
Foreign key (TeamID) References Team (TeamID)

Create User Chairperson@localhost identified by 'Chair1';
Create User Secretary@localhost identified by 'Admin1';
Create User Membership@localhost identified by 'Members1';

Grant Insert, Select, Update, Delete on clubmember To Secretary@localhost;
Grant Insert, Select, Update, Delete on coach.* To Secretary@localhost;
Grant Insert, Select, Update, Delete on GameMatch.* To Secretary@localhost;
Grant Insert, Select, Update, Delete on Team.* To Secretary@localhost;
Grant Insert, Select, Update, Delete on TeamEvent.* To Secretary@localhost;
Grant Insert, Select, Update, Delete on clubmember.* To Membership@localhost;
Grant Insert, Select, Update, Delete on Coach.* To Membership@localhost;
Grant Insert, Select, Update, Delete on GameMatch.* To Membership@localhost;
Revoke Insert, Select, Update, Delete on GameMatch.* from Membership@localhost;
);
