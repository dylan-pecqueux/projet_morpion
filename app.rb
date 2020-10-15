require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/board_case'
require 'app/board'
require 'app/game'
require 'app/player'
require 'views/show'



class App
	attr_accessor :morpion
	
  def initialize
    system "clear"
    puts "
    (`\ .-') /`   ('-.                                  _   .-')       ('-.   
    `.( OO ),' _(  OO)                                ( '.( OO )_   _(  OO)  
 ,--./  .--.  (,------.,--.       .-----.  .-'),-----. ,--.   ,--.)(,------. 
 |      |  |   |  .---'|  |.-')  '  .--./ ( OO'  .-.  '|   `.'   |  |  .---' 
 |  |   |  |,  |  |    |  | OO ) |  |('-. /   |  | |  ||         |  |  |     
 |  |.'.|  |_)(|  '--. |  |`-' |/_) |OO  )\_) |  |\|  ||  |'.'|  | (|  '--.  
 |         |   |  .--'(|  '---.'||  |`-'|   \ |  | |  ||  |   |  |  |  .--'  
 |   ,'.   |   |  `---.|      |(_'  '--'\    `'  '-'  '|  |   |  |  |  `---. 
 '--'   '--'   `------'`------'   `-----'      `-----' `--'   `--'  `------' 
                                                                                 
      ".red
    puts "dans le super mother fucking morpion game 2020 !".blue
    puts ""
    puts "*".green*100
    puts ""
    puts "Appui sur une touche pour que l'aventure commence !".blue
    gets.chomp
		@morpion = Game.new
		full_game	
	end

	def full_game
		turn = 0
		while @morpion.is_still_ongoing == true
      @morpion.play_each_turn(@morpion.player1)
      if @morpion.break_when == true
        @morpion.win_announcement(@morpion.player1)
        break
      end
      turn += 1
      if turn == 9 && @morpion.break_when == false
        @morpion.draw_announcement
        break
      end
      @morpion.play_each_turn(@morpion.player2)
      if @morpion.break_when == true
        @morpion.win_announcement(@morpion.player2)
        break
      end
      turn += 1	
    end
    turn = 0
    full_game
	end	
end
App.new