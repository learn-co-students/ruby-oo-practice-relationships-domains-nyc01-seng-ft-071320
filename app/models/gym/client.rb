class Client
  attr_accessor :trainer
  attr_reader :location
  @@all = []
  
  def initialize(location)
    @location = location
    Client.all << self
  end
  
  def assign_trainer(trainer)
    self.trainer = trainer
  end

  def self.all
    @@all
  end
end
