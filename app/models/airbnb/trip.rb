class Trip
  attr_reader :listing, :guest
  @@all = []

  def initialize(listing, guest)
    @listing = listing
    @guest = guest
    Trip.all << self
  end

  def self.all
    @@all
  end
  
end
