class Project
    attr_accessor :name, :creator, :goal, :pledge_amount, :pledge_count

    @@all = [] 

    def initialize(name, creator, goal)
        @name = name
        @creator = creator
        @goal = goal 
        @pledge_amount = 0
        @pledge_count = 0
        save 
    end

    def self.all
        @@all
    end 

    def save 
        @@all << self
    end


    def self.no_pledges
        Project.all.select do |project|
           !Pledge.projects.include?(project)
        end
    end

    def self.above_goal
        self.all.select{|project| project.goal <= project.pledge_amount}
    end

    def self.most_backers 
        max = self.all[0].pledge_count 
        most_backed_project = nil
        self.all.each do |project|
            if project.pledge_count > max
                max = project.pledge_count
                most_backed_project = project
            end
        end
        most_backed_project 
    end
end