class Ship

    @@all=[]

    attr_accessor :name, :type, :booty

    def initialize (details)
        @name, @type, @booty = details[:name], details[:type], details[:booty]
        @@all << self
    end

    def self.all
      @@all
    end

    def self.clear
        @@all = []
    end


end