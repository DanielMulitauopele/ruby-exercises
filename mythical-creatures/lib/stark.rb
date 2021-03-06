class Stark
    attr_accessor :name, :location, :safe
    
    def initialize(name, location = 'Winterfell')
        @name = name
        @location = location
        @safe = false
    end

    def safe?
        @safe
    end

    def house_words
        if @safe
            return 'The North Remembers'
        else
            return 'Winter is Coming'
        end
    end
end