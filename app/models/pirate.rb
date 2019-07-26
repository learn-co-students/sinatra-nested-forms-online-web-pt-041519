#  Pirates should have a name, weight, and height. 
# You will also need a class method that returns all the pirates. 

class Pirate

    attr_accessor :name, :weight, :height

    PIRATES = []

    def initialize(params)
        @name = params[:name] 
        @weight = params[:weight]
        @height = params[:height]
        PIRATES << self
    end
    # binding.pry


    def self.all 
        PIRATES
    end

end