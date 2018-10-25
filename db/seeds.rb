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
  tag_line: "League of Legends is a class-based multiplayer online battle arena (MOBA) game.",
  bio_paragraph_1:
    "In all game modes, players control characters called champions, chosen or assigned every match, who each have a set of unique abilities. Champions begin every match at a low level, and then gain experience over the course of the match to achieve a maximum level of 18.",
  bio_paragraph_2:
    "Gaining champion levels in matches allows players to unlock their champion's special abilities and augment them in a number of ways unique to each character. If a champion loses all their health, they are defeated, but are automatically revived in their base after enough time passes.",
  bio_paragraph_3: "",
  bio_paragraph_4: ""
  )

sc = Game.create(
  name: "Starcraft: Brood War",
  tag_line: "Starcraft is a highly-regarded real time strategy game (RTS) released by Blizzard in 1998.",
  bio_paragraph_1:
    "The original game and its expansion have been praised as one of the benchmark real-time strategy games of its time. The series has gathered a solid following around the world, particularly in South Korea, where professional players and teams participate in matches, earn sponsorships, and compete in televised matches.",
  bio_paragraph_2:
      "On March 27, 2017, Blizzard announced StarCraft: Remastered, a remastered version of the original StarCraft, with the core updates being up-to-date graphics, and revised dialogue and audio.",
  bio_paragraph_3:
    "As of April 19, 2017, StarCraft and its Brood War expansion are free to download and play from Blizzard's website.",
  bio_paragraph_4: ""
  )

cam = Game.create(
  name: "Cambio",
  tag_line: "Cambio is card game that is played with 2 or more players.",
  bio_paragraph_1: "
    You start by dealing four cards to each player face down in a 2×2 pattern and leaving the deck in the middle. The goal is to have the least amount of points by the end of the game. You may only play the game with one hand. Each player is given one chance to check out the 2 cards closest to them and memorize them. After that you may not peek again unless you pull a 7 or 8.",
  bio_paragraph_2:
    "The game starts by the first player to the right of the dealer picking a card from the deck. You may swap the card you pull with one of your own. This would be in order to reduce the amount of points you have.",
  bio_paragraph_3: "",
  bio_paragraph_4: ""
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
