
# def ask_name
#     puts "Salut, quel est ton nom ?"
#     name = gets.chomp
# end

class Player
    attr_accessor :name , :symbol

    def initialize (user_name, user_symbol)
        @name = user_name
        @symbol = user_symbol
    end

    def def ask_place
        puts "quel emplacement souhaites-tu ?"
        case_choosen = gets.chomp

        case case_choosen
            when "A1" 
                return 1
            when "A2"
                return 2
            when "A3"
                return 3
            when "B1"
                return 4
            when "B2"
                return 5
            when "B3" 
                return 6
            when "C1"
                return 7
            when "C2"
                return 8
            when "C3"
                return 9
            else 
                puts "Ceci est une erreur, merci de choisir de faire ton choix entre A1 et C3, ;)"
            end
    end






end