class Show
  @@all = []

  def initialize(name)
    @name = name
    Show.all << self
  end

  def on_the_big_screen

  end
  
end