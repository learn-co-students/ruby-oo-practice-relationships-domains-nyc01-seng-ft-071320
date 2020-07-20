class Pledge
  attr_reader :project, :user, :amount
  @@all = []

  def initialize(project, user, amount)
    @project = project
    @user = user
    @amount = amount
    Pledge.all << self
  end

  def self.all
    @@all
  end

  def self.highest
    all.group_by { |pledge| pledge.amount }.max.last
  end

end