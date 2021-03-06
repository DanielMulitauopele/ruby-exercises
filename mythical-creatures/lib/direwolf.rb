require_relative './stark'

class Direwolf
    attr_reader :name, :home, :size, :starks_to_protect

    def initialize(name, home = 'Beyond the Wall', size = 'Massive')
        @name = name
        @home = home
        @size = size
        @starks_to_protect = []
        @hunts_white_walkers = true
    end

    def protects(stark)
        if stark.location == @home && @starks_to_protect.count < 2
            @starks_to_protect.push(stark)
            stark.safe = true
        end
    end

    def hunts_white_walkers?
        if @starks_to_protect.count > 0    
            @hunts_white_walkers = false
        end

        @hunts_white_walkers
    end

    def leaves(stark)
        @starks_to_protect.delete(stark)
        stark.safe = false
        stark
    end
end
