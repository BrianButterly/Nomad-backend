puts "Destroying Old Seed Data..."

Stay.destroy_all
User.destroy_all
Host.destroy_all
Destination.destroy_all

puts "Destroy Complete."
puts "Seeding..."

User.create(username: "brianb85", password: "1234", location: "Chicago")
User.create(username: "natgal", password: "1234", location: "Hawaii")
User.create(username: "hardsteele", password: "1234", location: "Miami")

Host.create(name: "Jeff", age: 35, bio: "Hi! I'm Jeff. I like rap", rating: 4)
Host.create(name: "Joanna", age: 30, bio: "Hi! I'm Joanna, I like to sleep", rating: 3)
Host.create(name: "Austin", age: 24, bio: "Hi! I'm Austin", rating: 5)
Host.create(name: "Ignas", age: 12, bio: "legally I'm 6ft tall", rating: 4)
Host.create(name: "The Zan", age: 200, bio: "I am the Zan, all hail The Zan", rating: 5)
Host.create(name: "Victor", age: 26, bio: "Hi, I'm Victor, I like wine", rating: 3)
Host.create(name: "Kimberlyn", age: 24, bio: "I love Vampire Diaries", rating: 4)
Host.create(name: "Josue", age: 21, bio: "uhhh ummmm like, uhhh", rating: 1)

Destination.create(country: "U.S.A.", city: "New York")
Destination.create(country: "England", city: "London")
Destination.create(country: "Ireland", city: "Dublin")
Destination.create(country: "Mexico", city: "Mexico City")
Destination.create(country: "France", city: "Paris")
Destination.create(country: "Germany", city: "Munich")
Destination.create(country: "Spain", city: "Barcelona")
Destination.create(country: "Russia", city: "Moscow")
Destination.create(country: "China", city: "Hong Kong")
Destination.create(country: "Japan", city: "Tokyo")
Destination.create(country: "South Africa", city: "Cape Town")
Destination.create(country: "Australia", city: "Melbourne")
Destination.create(country: "U.S.A.", city: "Chicago")
Destination.create(country: "Irealnd", city: "Sligo")
Destination.create(country: "England", city: "Liverpool")
Destination.create(country: "Germany", city: "Berlin")
Destination.create(country: "Italy", city: "Rome")
Destination.create(country: "Switzerland", city: "Zürich")
Destination.create(country: "U.S.A.", city: "L.A.")
Destination.create(country: "Netherlands", city: "Amsterdam")

60.times do 
    Stay.create(
        user_id: User.all.sample.id, 
        host_id: Host.all.sample.id,
        destination_id: Destination.all.sample.id
    )
end 


puts "Seeding Complete"