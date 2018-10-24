john = User.create(
  first_name: "John",
  last_name: "Arnold",
  username: "Arnbag",
  email: "john@john.com",
  password: "john"
  )
oliver = User.create(
  first_name: "Oliver",
  last_name: "De Sousa",
  username: "Olly DS",
  email: "olly@olly.com",
  password: "olly"
  )
ryan = User.create(
  first_name: "Ryan",
  last_name: "Barker",
  username: "R-bomber",
  email: "ryan@ryan.test",
  password: "ryan"
  )
steve = User.create(
  first_name: "Steve",
  last_name: "Courtier",
  username: "The Boss",
  email: "CGS@cgs.com",
  password: "steve"
  )
barney = User.create(
  first_name: "Barney",
  last_name: "Loosemoore",
  username: "Barnabus",
  email: "bar@ney.com",
  password: "barney"
)
steve = User.create(
  first_name: "Amalie",
  last_name: "Smidth",
  username: "Danish",
  email: "amalie@amalie.com",
  password: "amalie"
)

lol = Game.create(
  name: "League of Legends",
  bio: "Class-based MOBA from Riot Games."
  )

sc = Game.create(
  name: "Starcraft: Brood War",
  bio: "Classic, timeless RTS game from Blizzard."
  )

ug1 = UserGame.create(user_id: 1, game_id: 1)
ug2 = UserGame.create(user_id: 1, game_id: 2)
ug3 = UserGame.create(user_id: 2, game_id: 1)
ug4 = UserGame.create(user_id: 2, game_id: 2)
ug5 = UserGame.create(user_id: 3, game_id: 1)
ug6 = UserGame.create(user_id: 3, game_id: 2)
ug7 = UserGame.create(user_id: 4, game_id: 1)
ug8 = UserGame.create(user_id: 5, game_id: 1)
ug9 = UserGame.create(user_id: 5, game_id: 2)
ug10 = UserGame.create(user_id: 6, game_id: 1)

t1 = Tournament.create(name:"Starcraft Brood War", date:"Friday 26th October", game_id: 2)
t2 = Tournament.create(name:"League of Legends", date:"Friday 26th October", game_id: 1)
t3 = Tournament.create(name:"Starcraft Brood War", date:"Friday 2nd November", game_id: 2)
t4 = Tournament.create(name:"League of Legends - 5v5", date:"Friday 2nd November", game_id: 1)
t5 = Tournament.create(name:"Starcraft Brood War - UMS Games", date:"Friday 9th November", game_id: 2)
t6 = Tournament.create(name:"League of Legends - ARAM", date:"Friday 9th November", game_id: 1)
t7 = Tournament.create(name:"Starcraft Brood War - UMS Games", date:"Friday 16th November", game_id: 2)
t8 = Tournament.create(name:"League of Legends - 5v5", date:"Friday 16th November", game_id: 1)

ut1 = UserTournament.create(user_id: 1, tournament_id: 1)
ut2 = UserTournament.create(user_id: 1, tournament_id: 2)
ut3 = UserTournament.create(user_id: 1, tournament_id: 3)
ut4 = UserTournament.create(user_id: 1, tournament_id: 4)
ut5 = UserTournament.create(user_id: 2, tournament_id: 1)
ut6 = UserTournament.create(user_id: 2, tournament_id: 2)
ut7 = UserTournament.create(user_id: 2, tournament_id: 3)
ut8 = UserTournament.create(user_id: 2, tournament_id: 4)
