# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Sophie", username: "smoop", email: "sophie@sophie.sophie")
User.create(name: "Matt", username: "macro6461", email: "matt@matt.matt")

Post.create(content: "hahaha blah yolo i'm writing a post ayy lmao", user_id: 1)
Post.create(content: "is it happy hour yet?", user_id: 2)
Post.create(content: "feelings...so many feelings", user_id: 2)

Comment.create(content: "wow what an awesome post", user_id: 2, post_id: 1)
Comment.create(content: "hell fuckin yeah it's happy hour bitch", user_id: 1, post_id: 2)
