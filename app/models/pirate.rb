class Pirate
  attr_accessor :name, :weight, :height, :ships

  @@all = []
  def self.all
    @@all
  end

  def initialize(params)
    self.name, self.weight, self.height = params[:name], params[:height], params[:weight]
    self.class.all << self
  end
end
