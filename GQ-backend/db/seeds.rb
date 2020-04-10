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
    {name:"Muhammad Ali"},
    {name:"Joe Montana"},
    {name:"Serena Williams"},
    {name:"Mia Hamm"},
    {name:"Lisa Leslie"},
    {name:"Mario Lemieux"},
    {name:"Hank Aaron"},
    {name:"Jackie Robinson"},
    {name:"Babe Ruth"},
    {name:"Derek Jeter"}

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
    },
    {
        content:"Winners, I am convinced, imagine their dreams first. They want it with all their heart and expect it to come true. There is, I believe, no other way to live.",
        athlete_id:Athlete.find_by(name:"Joe Montana").id,
        sport_id:Sport.find_by(name:"Football").id
    },
    {
        content:"Yeah, it's nice to look up to peaople but the more you try to be somebody else, the less you are of yourself.",
        athlete_id:Athlete.find_by(name:"Joe Montana").id,
        sport_id:Sport.find_by(name:"Football").id
    },
    {
        content:"The success of every woman should be the inspiration to another. We should raise each other up. Make sure you’re very courageous: be strong, be extremely kind, and above all be humble.",
        athlete_id:Athlete.find_by(name:"Serena Williams").id,
        sport_id:Sport.find_by(name:"Other").id
    },
    {
        content:"True champions aren't always the ones that win, but those with the most guts.",
        athlete_id:Athlete.find_by(name:"Mia Hamm").id,
        sport_id:Sport.find_by(name:"Soccer").id
    },
    {
        content:"Everyone talks about age, but it's not about age. It's about work ethic. Winning never gets old.",
        athlete_id:Athlete.find_by(name:"Lisa Leslie").id,
        sport_id:Sport.find_by(name:"Basketball").id
    },
    {
        content:"Play without fear and you will be successful.",
        athlete_id:Athlete.find_by(name:"Mario Lemieux").id,
        sport_id:Sport.find_by(name:"Hockey").id
    },
    {
        content:"Procrastination is one of the most common and deadliest of diseases and its toll on success and happiness is heavy.",
        athlete_id:Athlete.find_by(name:"Wayne Gretzky").id,
        sport_id:Sport.find_by(name:"Hockey").id
    },
    {
        content:"On the field, blacks have been able to be super giants. But, once our playing days are over, this is the end of it and we go back to the back of the bus again.",
        athlete_id:Athlete.find_by(name:"Hank Aaron").id,
        sport_id:Sport.find_by(name:"Baseball").id
    },
    {
        content:"The most luxurious possession, the richest treasure anybody has, is his personal dignity.",
        athlete_id:Athlete.find_by(name:"Jackie Robinson").id,
        sport_id:Sport.find_by(name:"Baseball").id
    },
    {
        content:"You just can't beat the person who never gives up.",
        athlete_id:Athlete.find_by(name:"Babe Ruth").id,
        sport_id:Sport.find_by(name:"Baseball").id
    },
    {
        content:"There may be people who have more talent than you, but there's no excuse for anyone to work harder than you do - and I believe that.",
        athlete_id:Athlete.find_by(name:"Derek Jeter").id,
        sport_id:Sport.find_by(name:"Baseball").id
    }
])