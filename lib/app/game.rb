#Déroulement de la partie
class Game
  attr_accessor :player1, :player2

  def initialize
    @player1 = Player.new(ask_name.red, "x".red)
    @player2 = Player.new(ask_name.green, "o".green)
    @game_board = Board.new
  end

  def ask_name
    system "clear"
    puts "Salut, quel est ton nom ?".red
    print ">".blue
    name = gets.chomp
  end

  def play_each_turn(player)
    system "clear"
    puts "Hello #{player.name}, c'est à toi de jouer, tu as le symbole : #{player.symbol}"
    ask_place(player)
  end

  def ask_place(player)
    puts "quel emplacement souhaites-tu ?"
    puts ""
    @game_board.show
    print ">"
    case_choosen = gets.chomp

  case case_choosen
    when "A1"
      if @game_board.is_playable?(0) == true
        @game_board.set_case_value(0, player.symbol)
      else 
        system "clear"
        puts "déjà pris!"
        ask_place(player)
      end

    when "A2"
      if @game_board.is_playable?(1) == true
        @game_board.set_case_value(1, player.symbol)
      else 
        system "clear"
        puts "déjà pris!"
        ask_place(player)
    end
    when "A3"
      if @game_board.is_playable?(2) == true
        @game_board.set_case_value(2, player.symbol)
      else 
        system "clear"
        puts "déjà pris!"
        ask_place(player)
      end
    when "B1"
      if @game_board.is_playable?(3) == true
        @game_board.set_case_value(3, player.symbol)
      else 
        system "clear"
        puts "déjà pris!"
        ask_place(player)
      end
      when "B2"
        if @game_board.is_playable?(4) == true
          @game_board.set_case_value(4, player.symbol)
        else 
          system "clear"
          puts "déjà pris!"
          ask_place(player)
        end
      when "B3" 
        if @game_board.is_playable?(5) == true
          @game_board.set_case_value(5, player.symbol)
        else 
          system "clear"
          puts "déjà pris!"
          ask_place(player)
        end
      when "C1"
        if @game_board.is_playable?(6) == true
          @game_board.set_case_value(6, player.symbol)
        else 
          system "clear"
          puts "déjà pris!"
          ask_place(player)
        end
      when "C2"
        if @game_board.is_playable?(7) == true
          @game_board.set_case_value(7, player.symbol)
        else 
          system "clear"
          puts "déjà pris!"
          ask_place(player)
        end
      when "C3"
        if @game_board.is_playable?(8) == true
          @game_board.set_case_value(8, player.symbol)
        else 
          system "clear"
          puts "déjà pris!"
          ask_place(player)
        end
      else 
        system "clear"
        puts "Ceci est une erreur, merci de choisir de faire ton choix entre A1 et C3, ;)"
        ask_place(player)
      end
  end

  def is_still_ongoing
    if @game_board.victory == false or @game_board.draw_game == false
      return true
    end
  end

  def break_when
    if @game_board.victory == true
      return true
    else
      return false
    end  
  end

  def draw_announcement
    system "clear"
    puts "
    ('-.     _   .-')       ('-.                           (`-.      ('-.  _  .-')   
    ( OO ).-.( '.( OO )_   _(  OO)                        _(OO  )_  _(  OO)( \( -O )  
,----.      / . --. / ,--.   ,--.)(,------.       .-'),-----. ,--(_/   ,. \(,------.,------.  
'  .-./-')   | \-.  \  |   `.'   |  |  .---'      ( OO'  .-.  '\   \   /(__/ |  .---'|   /`. ' 
|  |_( O- ).-'-'  |  | |         |  |  |          /   |  | |  | \   \ /   /  |  |    |  /  | | 
|  | .--, \ \| |_.'  | |  |'.'|  | (|  '--.       \_) |  |\|  |  \   '   /, (|  '--. |  |_.' | 
(|  | '. (_/  |  .-.  | |  |   |  |  |  .--'         \ |  | |  |   \     /__) |  .--' |  .  '.' 
|  '--'  |   |  | |  | |  |   |  |  |  `---.         `'  '-'  '    \   /     |  `---.|  |\  \  
`------'    `--' `--' `--'   `--'  `------'           `-----'      `-'      `------'`--' '--'   ".red
    puts ""
    puts "Match nul !".blue
    puts ""
    @game_board.show
    puts ""
    puts "*".green*100
    puts ""
    puts "appui sur une touche pour la suite".blue
    gets.chomp
    system "clear"
    play_again
  end

  def win_announcement(player)
    if @game_board.victory == true
      system "clear"
      puts "
      ('-.     _   .-')       ('-.                           (`-.      ('-.  _  .-')   
      ( OO ).-.( '.( OO )_   _(  OO)                        _(OO  )_  _(  OO)( \( -O )  
,----.      / . --. / ,--.   ,--.)(,------.       .-'),-----. ,--(_/   ,. \(,------.,------.  
'  .-./-')   | \-.  \  |   `.'   |  |  .---'      ( OO'  .-.  '\   \   /(__/ |  .---'|   /`. ' 
|  |_( O- ).-'-'  |  | |         |  |  |          /   |  | |  | \   \ /   /  |  |    |  /  | | 
|  | .--, \ \| |_.'  | |  |'.'|  | (|  '--.       \_) |  |\|  |  \   '   /, (|  '--. |  |_.' | 
(|  | '. (_/  |  .-.  | |  |   |  |  |  .--'         \ |  | |  |   \     /__) |  .--' |  .  '.' 
|  '--'  |   |  | |  | |  |   |  |  |  `---.         `'  '-'  '    \   /     |  `---.|  |\  \  
`------'    `--' `--' `--'   `--'  `------'           `-----'      `-'      `------'`--' '--'   ".red
      puts ""
      puts "Victoire de #{player.name}".blue
      puts ""
      @game_board.show
      puts ""
      puts "*".green*100
      puts ""
      puts "appui sur une touche pour la suite".blue
      gets.chomp
      system "clear"
      play_again
    end
  end

  def play_again
    puts "
    .-') _   _  .-')               
    (  OO) ) ( \( -O )              
    /     '._ ,------.   ,--.   ,--.
    |'--...__)|   /`. '   \  `.'  / 
    '--.  .--'|  /  | | .-')     /  
       |  |   |  |_.' |(OO  \   /   
       |  |   |  .  '.' |   /  /\_  
       |  |   |  |\  \  `-./  /.__) 
       `--'   `--' '--'   `--'      
    ".blue
    puts "
    ('-.                   ('-.                  .-') _        ,------.  
    ( OO ).-.              ( OO ).-.             ( OO ) )      '  .--.  ' 
    / . --. /  ,----.      / . --. /  ,-.-') ,--./ ,--,'       |  |  |  | 
    | \-.  \  '  .-./-')   | \-.  \   |  |OO)|   \ |  |\       '--'  |  | 
  .-'-'  |  | |  |_( O- ).-'-'  |  |  |  |  \|    \|  | )          __.  | 
   \| |_.'  | |  | .--, \ \| |_.'  |  |  |(_/|  .     |/          |   .'  
    |  .-.  |(|  | '. (_/  |  .-.  | ,|  |_.'|  |\    |           |___|   
    |  | |  | |  '--'  |   |  | |  |(_|  |   |  | \   |           .---.   
    `--' `--'  `------'    `--' `--'  `--'   `--'  `--'           '---'   
    ".green
    puts ""
    puts "yes or no ?".center(20).blue
    puts ""
    print ">".green
    choice = gets.chomp
    if choice == "yes"
      @game_board.reset
    else
      puts "Dommage, hasta la vista bye bye !".red
      return
    end
  end
end

