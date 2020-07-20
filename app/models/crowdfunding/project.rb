class Project
  attr_reader :user, :goal_amount
  @@all = []

  def initialize(user, goal_amount)
    @user = user
    @goal_amount = goal_amount
    Project.all << self
  end

  def self.all
    @@all
  end

  def pledges
    Pledge.all.select { |pledge| pledge.project == self }
  end
  
  def pledge_count
    pledges.count
  end

  def self.no_pledges
    all.select { |project| project.pledge_count == 0 }
  end
  
  def pledge_total
    pledges.sum(&:amount)
  end

  def self.above_goal
    all.select { |project| project.pledge_total >= project.goal_amount }
  end

  def backers
    pledges.map(&:user)
  end
p
  def backer_count
    backers.count
  end

  def self.most_backers
    all.group_by { |project| project.backer_count }.max.last
  end

end