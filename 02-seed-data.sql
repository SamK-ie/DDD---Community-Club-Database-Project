Insert into Team (
TeamID, TeamName, AgeGroup)
values
(1, 'WAW Mens First Team', 'Senior'),
(2, 'WAW Mens Second Team', 'Senior'),
(3, 'U18s Boys Team', '16-18'),
(4, 'U16s Boys Team', '14-16'),
(5, 'Non Club Team', Null);

Insert into Coach (
CoachID, CoachName, ContactInfo, Certification, Specialisation, TeamID)
values
(1, 'Tom Brady', '0876594324', 'Level 3', 'Head Coach', 1),
(2, 'Mark Vaughan', '0897658767', 'Level 3', 'Forwards Coach', 1),
(3, 'Paul Squire', '0876567908', 'Level 3', 'Backs Coach', 1),
(4, 'Kieran Connolly', '0897676543', 'Level 3', 'Youth Development', 3),
(5, 'John OConnor', '0896754311', 'Level 3', 'Forwards Coach', 2),
(6, 'Margaret OGorman', '0854345676', 'Level 2', 'Children Development', 4);

Insert into ClubMember (
MemberID, TeamID, MemberName, ContactInfo, DateOfBirth, JoinDate, MembershipType, PositionPlayed)
Values
(1, 1, 'Craig Scott', '0879897654', '1989-08-09' , '2000-08-31' , 'player', 'Scrumhalf'),
(2, 2, 'Robert Brown', '0876565432', '1984-04-28' , '2002-09-08' , 'player', 'Prop'),
(3, 4, 'Mark Langley', '0858786745', '2009-08-04' , '2019-08-25' , 'player', 'Hooker');

Insert into TeamEvent(
EventID, EventName, EventType, EventDate, Location, CoachID)
values
(1, 'CampOut', 'Fundraiser', '2024-08-20', 'Rugby Club', 6),
(2, 'Training Camp', 'Training', '2024-04-05', 'Santa Ponza', 1),
(3, 'Club Barbecue and Awards', 'Social', '2024-07-31', 'ClubHouse', 2);

Insert into gameMatch (
MatchID, HomeTeamID, AwayTeamID, MatchDate, Venue, Result)
values
(1, 1, 5, '2023-10-27', 'WAW ClubHouse', '24:12 WAW Win'),
(2, 5, 2, '2023-10-27', 'Limerick RFC', '28:07 WAW Lose');
