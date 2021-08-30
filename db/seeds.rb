# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

haiku = Category.create(name: "Haiku")
free_verse = Category.create(name: "Free Verse")
sonnet = Category.create(name: "Sonnet")
acrostic = Category.create(name: "Acrostic")
villanelle = Category.create(name: "Villanelle")
limerick = Category.create(name: "Limerick")
ode = Category.create(name: "Ode")
elegy = Category.create(name: "Elegy")
ballad = Category.create(name: "Ballad")
stanza = Category.create(name: "Stanza")
epigram = Category.create(name: "Epigram")
epitaph = Category.create(name: "Epitaph")


Poem.create(title:"The Seed", author: "Naomi", stanza: "The fast wind blow like my anxious thoughts that flows through my brain, sometimes days are like the storm wind, somedays are like a calm lake where the wind is gentle and pleasent. It's amazing how the clouds can dictate my moods and a single seed can store so many memories and create another seed, but a single fire can destroy it all", genre: "Reflective", image_url: "https://images.app.goo.gl/9f6hbJE1hSjj8cxLA", category_id: free_verse.id )

 