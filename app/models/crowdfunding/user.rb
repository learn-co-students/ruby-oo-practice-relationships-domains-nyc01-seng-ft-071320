class User
  @@all = []

  def initialize
    User.all << self
  end

  def self.all
    @@all
  end
  
  def pledges
    Pledge.all.select { |pledge| pledge.user == self}
  end

  def pledge_count
    pledges.count
  end

  def projects
    Project.all.select { |project| project.user == self }
  end
  
  def project_count
    projects.count
  end

  def self.highest_pledge
    Pledge.highest.map(&:user)
  end

  def self.multi_pledger
    all.select { |user| user.pledge_count > 1 }
  end

  def self.project_creator
    all.select { |user| user.project_count > 0 }
  end

end