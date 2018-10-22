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

lol = Game.create(
  name: "League of Legends",
  bio: "Class-based MOBA from Riot Games."
  )

sc = Game.create(
  name: "Starcraft: Brood War",
  bio: "Classic, timeless RTS game from Blizzard."
  )
