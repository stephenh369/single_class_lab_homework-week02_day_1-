class Team 

    attr_accessor :name, :players, :coach, :points

   
    def initialize(name, players, coach)
        @name = name
        @players = players
        @coach = coach
        @points = 0
    end

    def add_player(name)
        @players = players.push(name)
    end

    def find_player(name)
        for player in @players
            return player if (name == player)
        end
    end

    def add_points(win)
        points = 10
        @points += points if (win == true)
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