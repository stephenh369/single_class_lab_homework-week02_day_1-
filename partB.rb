class Team 

    attr_accessor :name, :players, :coach

    def initialize(name, players, coach)
        @name = name
        @players = players
        @coach = coach
    end

    def add_player(name)
        @players = players.push(name)
    end

    def find_player(name)
        for player in @players
            return player if (name == player)
        end
    end

    # def name()
    #     return @name
    # end

    # def players()
    #     return @players
    # end

    # def coach()
    #     return @coach
    # end

    # def set_coach(new_coach)
    #     @coach = new_coach
    # end

end