# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(username: "John", email: "user@user.com", password: "123456")
User.create(username: "Mary",email: "user2@user.com", password: "123456")

Note.create(title: "Title 1", body: "Body 1", user_id: 1)
Note.create(title: "Title 2", body: "Body 2", user_id: 1)
Note.create(title: "Title 3", body: "Body 3", user_id: 1)
Note.create(title: "Title 4", body: "Body 4", user_id: 2)
Note.create(title: "Title 5", body: "Body 5", user_id: 2)