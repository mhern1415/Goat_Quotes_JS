# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Quote.destroy_all
Athlete.destroy_all
Sport.destroy_all

Sport.create([
    {name:"Basketball"},
    {name:"Baseball"},
    {name:"Hockey"},
    {name:"Football"},
    {name:"Soccer"},
    {name:"Other"}

])

Athlete.create([
    {name:"Kobe Bryant"},
    {name:"Michael Jordan"},
    {name:"Willie Mays"},
    {name:"Stephen Curry"},
    {name:"Wayne Gretzky"},
    {name:"Tom Brady"},
    {name:"Cristiano Ronaldo"},
    {name:"Muhammad Ali"}

])

Quote.create([
    {
        content:"The most important thing is to try and inspire people so that they can be great in whatever they want to do.",
        athlete_id:Athlete.find_by(name:"Kobe Bryant").id,
        sport_id:Sport.find_by(name:"Basketball").id
    },
    {
        content:"Once you know what failure feels like, determination chases success.",
        athlete_id:Athlete.find_by(name:"Kobe Bryant").id,
        sport_id:Sport.find_by(name:"Basketball").id
    },
    {
        content:"I can accept failure, but I can't accept not trying.",
        athlete_id:Athlete.find_by(name:"Michael Jordan").id,
        sport_id:Sport.find_by(name:"Basketball").id
    },
    {
        content:"I would try and help everybody, because the game was so easy for me. It was just like walking in the park.",
        athlete_id:Athlete.find_by(name:"Willie Mays").id,
        sport_id:Sport.find_by(name:"Baseball").id
    },
    {
        content:"You miss 100 percent of the shots you never take.",
        athlete_id:Athlete.find_by(name:"Wayne Gretzky").id,
        sport_id:Sport.find_by(name:"Hockey").id
    },
    {
        content:"If you don’t believe in yourself, why is anyone else going to believe in you?",
        athlete_id:Athlete.find_by(name:"Tom Brady").id,
        sport_id:Sport.find_by(name:"Football").id
    },
    {
        content:"He who is not courageous enough to take risks will accomplish nothing in life.",
        athlete_id:Athlete.find_by(name:"Muhammad Ali").id,
        sport_id:Sport.find_by(name:"Other").id
    },
    {
        content:"If you think you’re perfect already, then you never will be.",
        athlete_id:Athlete.find_by(name:"Cristiano Ronaldo").id,
        sport_id:Sport.find_by(name:"Soccer").id
    },
    {
        content:"Be the best version of yourself in anything you do. You don’t have to live anybody else’s story.",
        athlete_id:Athlete.find_by(name:"Stephen Curry").id,
        sport_id:Sport.find_by(name:"Basketball").id
    }
])