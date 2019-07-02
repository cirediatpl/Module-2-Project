# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
quiz1 = Quiz.create(name: "Which Ice Cream Are You?", quiz_url: "https://www.buzzfeed.com/cdoc456/we-will-tell-you-your-favorite-ice-cream-flavor-5lg7kqp1gj")
quiz2 = Quiz.create(name: "Which Marvel Villain are You?", quiz_url: "https://www.buzzfeed.com/exchaff/what-marvel-villain-best-matches-your-personality-1qzozqqrv5")

Group.create(name: "Vanilla", bio: "simple and sweet", quiz: quiz1)
Group.create(name: "Chocolate", bio: "deep and rich with a dark twist", quiz: quiz1)
Group.create(name: "Mint Chocolate Chip", bio: "fresh and bright with personality in every bite", quiz: quiz1)
Group.create(name: "Strawberry", bio: "fierce, explosive, and unqpologetic", quiz: quiz1)

Group.create(name: "Thanos", bio: "perfectly balanced", quiz: quiz2)
Group.create(name: "Loki", bio: "twisted and misunderstood", quiz: quiz2)
Group.create(name: "Venom", bio: "chaotic, intense, and ready for action", quiz: quiz2)
Group.create(name: "Magneto", bio: "focused and calculated", quiz: quiz2)