class Ship

    attr_accessor :name, :type, :booty_attributes

    @@ships = []

    def initialize(params)
        @name = params[:name]
        @type = params[:type]
        @booty_attributes = params[:booty_attributes]
        @@ships << self
    end

    def self.all
        @@ships
    end

    def self.clear
        @@ships = []
    end
    
end