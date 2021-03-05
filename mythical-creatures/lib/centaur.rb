class Centaur
    attr_reader :name, :breed

    def initialize(name, breed)
        @name = name
        @breed = breed
        @cranky = false
        @standing = true
        @cranky_count = 0
        @sick = false
    end

    def shoot
        if cranky? || laying?
            return "NO!"
        else
            @cranky_count += 1
            return "Twang!!!"
        end
    end

    def run
        if cranky? || laying?
            return "NO!"
        else
            @cranky_count += 1
            return "Clop clop clop clop!!!"
        end
    end

    def cranky?
        if @cranky_count >= 3
            @cranky = true
        end     

        return @cranky
    end

    def standing?
        @standing
    end

    def laying?
        !standing?
    end

    def sick?
        @sick
    end

    def lay_down
        @standing = false
    end

    def stand_up
        @standing = true
    end

    def sleep
        if standing?
            return "NO!"
        else 
            @cranky_count = 0
            @cranky = false
        end
    end

    def drink_potion
        if laying?
            return "You want me to spill?"
        elsif cranky? == false
            @sick = true
        else
            @cranky_count = 0
            @cranky = false
        end
    end
end
