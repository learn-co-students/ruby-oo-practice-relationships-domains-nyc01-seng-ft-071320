class Pledge
    attr_accessor :project, :user, :amount

    @@all = []

    def initialize(project, user, amount)
        @project = project
        @user = user
        @amount = amount
        @project.pledge_amount += amount
        @project.pledge_count += 1
        save
    end

    def self.all 
        @@all 
    end

    def save
        @@all << self 
    end

    def self.projects
        self.all.map{|pledge| pledge.project}
    end
end