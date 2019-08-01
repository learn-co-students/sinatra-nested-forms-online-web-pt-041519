class Pirate
    attr_accessor :name, :height, :weight
    PIRATES = []

    def initialize(details)
        @name = details[:name]
        @height = details[:height]
        @weight = details[:weight]
        PIRATES << self
    end

    def self.all    
        PIRATES
    end

end