john = User.create(
  first_name: "John",
  last_name: "Arnold",
  username: "Arnbag",
  email: "john.arnold@flatironschool.com",
  encrypted_password: "12345",
  salt: "",
  img_url: ""
  )

oliver = User.create(
  first_name: "Oliver",
  last_name: "De Sousa",
  username: "Olly DS",
  email: "oliver.desousa@flatironschool.com",
  encrypted_password: "abc123",
  salt: "",
  img_url: "",
  )

ryan = User.create(
  first_name: "Ryan",
  last_name: "Barker",
  username: "R-bomber",
  email: "test@test.test",
  encrypted_password: "qwerty",
  salt: "",
  img_url: "",
  )

steve = User.create(
  first_name: "Steve",
  last_name: "Courtier",
  username: "The Boss",
  email: "test@test.test",
  encrypted_password: "qwerty123",
  salt: "",
  img_url: "",
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
  ug2 = UserGame.create(user_id: 2, game_id: 2)
  ug2 = UserGame.create(user_id: 3, game_id: 2)
  ug2 = UserGame.create(user_id: 4, game_id: 1)