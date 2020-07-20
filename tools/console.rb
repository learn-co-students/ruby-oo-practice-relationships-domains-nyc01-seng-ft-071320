require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

user1 = User.new
user2 = User.new
user3 = User.new
user4 = User.new
user5 = User.new

project1 = Project.new(user1, 1000)
project2 = Project.new(user2, 10000)
project3 = Project.new(user3, 10000)
project4 = Project.new(user5, 400)

pledge1 = Pledge.new(project1, user2, 500)
pledge2 = Pledge.new(project1, user3, 800)
pledge3 = Pledge.new(project2, user1, 400)
pledge4 = Pledge.new(project2, user3, 700)
pledge5 = Pledge.new(project3, user1, 100)
pledge6 = Pledge.new(project3, user4, 200)


Pry.start
