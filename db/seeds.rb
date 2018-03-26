# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(username: "John", email: "user@user.com", password: "123456")
User.create(username: "Mary",email: "user2@user.com", password: "123456")
User.create(username: "Mike",email: "user3@user.com", password: "123456")
User.create(username: "Paul",email: "user4@user.com", password: "123456")
User.create(username: "Kat",email: "user5@user.com", password: "123456")
User.create(username: "Jenny",email: "user6@user.com", password: "123456")
User.create(username: "Peter",email: "user7@user.com", password: "123456")
User.create(username: "Lucy",email: "user8@user.com", password: "123456")
User.create(username: "Susan",email: "user9@user.com", password: "123456")

Note.create(title: "Title 1", body: "Body 1", user_id: 1)
Note.create(title: "Title 2", body: "Body 2", user_id: 1)
Note.create(title: "Title 3", body: "Body 3", user_id: 1)
Note.create(title: "Title 4", body: "Body 4", user_id: 2)
Note.create(title: "Title 5", body: "Body 5", user_id: 2)
Note.create(title: "Title 6", body: "Body 6", user_id: 3)
Note.create(title: "Title 7", body: "Body 7", user_id: 2)
Note.create(title: "Title 8", body: "Body 8", user_id: 3)
Note.create(title: "Title 9", body: "Body 9", user_id: 2)
Note.create(title: "Title 10", body: "Body 10", user_id: 2)
Note.create(title: "Title 11", body: "Body 11", user_id: 2)
Note.create(title: "Title 12", body: "Body 12", user_id: 4)
Note.create(title: "Title 13", body: "Body 13", user_id: 2)
Note.create(title: "Title 14", body: "Body 14", user_id: 5)
Note.create(title: "Title 15", body: "Body 15", user_id: 2)
Note.create(title: "Title 16", body: "Body 16", user_id: 8)
Note.create(title: "Title 17", body: "Body 17", user_id: 9)
Note.create(title: "Title 18", body: "Body 18", user_id: 2)

Follow.create(follower_id: 1, following_id: 2)
Follow.create(follower_id: 1, following_id: 3)
Follow.create(follower_id: 1, following_id: 5)
Follow.create(follower_id: 1, following_id: 6)
Follow.create(follower_id: 1, following_id: 8)
Follow.create(follower_id: 2, following_id: 1)
Follow.create(follower_id: 5, following_id: 1)
Follow.create(follower_id: 9, following_id: 2)
Follow.create(follower_id: 4, following_id: 2)
Follow.create(follower_id: 5, following_id: 2)
Follow.create(follower_id: 6, following_id: 2)
Follow.create(follower_id: 8, following_id: 2)