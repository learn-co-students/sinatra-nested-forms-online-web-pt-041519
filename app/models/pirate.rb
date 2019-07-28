class Pirate
  attr_accessor :name, :weight, :height
  @@pirates = []

  def initialize(hash)
    @name = hash[:name]
    @weight = hash[:weight]
    @height = hash[:height]
    @@pirates << self
  end

  def self.all
    @@pirates
  end

end
