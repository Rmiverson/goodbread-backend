# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.destroy_all
# Post.destroy_all
# Comment.destroy_all

u1 = User.create(username: "rmiverson", password_digest: "1234")
u2 = User.create(username: "lol", password_digest: "1234")

p1 = Post.create(user_id: 1, title: "Coolest Recipe Ever", content: "this is the best recepie ever made. just buy bread.")
p1 = Post.create(user_id: 1, title: "WOW", content: "CCCCCCOOOOOOOOOLLLLLLLLL.")
p1 = Post.create(user_id: 1, title: "Le epic meme", content: "10 cans of spaget")
p1 = Post.create(user_id: 1, title: "No.", content: "Just no.")
p1 = Post.create(user_id: 1, title: "Top 10 Anime Betrayals", content: "You won't believe number 3!")
p1 = Post.create(user_id: 1, title: "Rustic Sourdough Bread", content: "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.")

l1 = PostLike.create(user_id: 2, post_id: 1)

f1 = Relationship.create(follower_id: 2, followee_id: 1)

c1 = Comment.create(user_id: 2, post_id: 1, content: "wow, so cool!")

cl1 = CommentLike.create(user_id: 1, comment_id: 1)