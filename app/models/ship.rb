class Ship
  attr_accessor :name, :type, :booty

  @@all = []
  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end

  def initialize(params)
    # binding.pry
    self.name, self.type, self.booty = params[:name], params[:type], params[:booty]
    self.class.all << self
  end

end
