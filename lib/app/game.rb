

#Déroulement de la partie

class Game
attr_accessor :player1, :player2

def initialize
    @player1 = Player.new(ask_name, "x")
    @player2 = Player.new(ask_name, "o")

    end

    def ask_name
        puts "Salut, quel est ton nom ?"
        name = gets.chomp
    end

    def play_each_turn
        puts "Hello #{@player1.name}, c'est à toi de jouer"
        @player1.ask_place
        puts "Hello #{@player2.name}, c'est à toi de jouer"
        @player2
    end

    def win_announcement
        if victory(@player1) == true
            "Victoire, #{player1.name}, tu as gagné"
        elsif victory(@player2) == true
            "Victoire, #{player2.name}, tu as gagné"
        end
    end

    def even_game_announcement
        
    end