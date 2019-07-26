# The ship class should have name, type, and booty attributes, 
# as well as a class method .all that returns all the ships and 
# a class method .clear that deletes all ships.

class Ship

    attr_accessor :name, :type, :booty

    @@ships = []

    def initialize(params)
        @name = params[:name]
        @type = params[:type]
        @booty = params[:booty]
        @@ships << self
    end

    def self.all 
        @@ships
    end

    def self.clear 
        @@ships = []
    end

end