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


Pry.start
