require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

actor1 = Actor.new
actor2 = Actor.new
actor3 = Actor.new

character1 = Character.new(actor1)
character2 = Character.new(actor1)
character3 = Character.new(actor2)
character4 = Character.new(actor2)
character5 = Character.new(actor3)
character6 = Character.new(actor3)

movie1 = Movie.new("Spring")
movie2 = Movie.new("Summer")
movie3 = Movie.new("Autumn")
movie4 = Movie.new("Winter")
movie5 = Movie.new("Year")
movie6 = Movie.new("Time")

show1 = Show.new("Spring")
show2 = Show.new("Week")
show3 = Show.new("Month")
show4 = Show.new("Minute")
show5 = Show.new("Second")
show6 = Show.new("Hour")

Casting.new(movie1, character1)
Casting.new(movie2, character1)
Casting.new(movie2, character2)
Casting.new(movie2, character3)
Casting.new(show1, character1)
Casting.new(show2, character1)
Casting.new(show2, character2)

Pry.start
