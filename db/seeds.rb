# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Sophie", username: "smoop", email: "sophie@sophie.sophie")
User.create(name: "Matt", username: "macro6461", email: "matt@matt.matt")
User.create(name: "Joe", username: "joFoSho", email: "joe@joe.com")
User.create(name: "Avi", username: "aviFlomBom", email: "avi@avi.com")
User.create(name: "Max", username: "snackswell", email: "snacker@max.max")
User.create(name: "Alex", username: "alexgriff", email: "alex@alex.com")
User.create(name: "Rachel", username: "wauChillRach", email: "rach@rach.com")

Post.create(content: "hahaha blah yolo i'm writing a post ayy lmao", user_id: 1)
Post.create(content: "is it happy hour yet?", user_id: 2)
Post.create(content: "feelings...so many feelings", user_id: 2)
Post.create(content: "if you can dream it YOU CAN DO IT!", user_id: 3)
Post.create(content: "#learnlovecode!", user_id: 4)
Post.create(content: "I hate snacks #irony", user_id: 5)
Post.create(content: "about to grab some coffee", user_id: 6)
Post.create(content: "Happy friday is better than happy thursday...", user_id: 7)


Comment.create(content: "wow what an awesome post", user_id: 2, post_id: 1)
Comment.create(content: "happy hour!!!!!", user_id: 3, post_id: 2)
Comment.create(content: "love Post'd", user_id: 4, post_id: 2)
Comment.create(content: "whoever made this is so smart", user_id: 5, post_id: 2)
Comment.create(content: "love coffee", user_id: 6, post_id: 4)
Comment.create(content: "hell yeah it's happy hour!", user_id: 1, post_id: 2)
