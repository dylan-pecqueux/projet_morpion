class Board
  attr_accessor :cases, :player

  def initialize
    @cases = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  def show
    puts " " + " "*3 + " "*2 + "1" + " " * 2 + " " + " "*2 + "2" + " " * 2 + " " + " "*2 + "3"+ " " * 2
    puts ""
    puts " " + " "*3 + " "*5 + "|" + " "*5 + "|" + " "*5
    puts "A" + " "*3 + " "*2 + cases[0].to_s + " " * 2 + "|" + " "*2 + cases[1].to_s + " " * 2 + "|" + " "*2 + cases[2].to_s + " " * 2
    puts " " + " "*3 + " "*5 + "|" + " "*5 + "|" + " "*5
    puts " " + " "*3 + "-"*17
    puts " " + " "*3 + " "*5 + "|" + " "*5 + "|" + " "*5
    puts "B" + " "*3 + " "*2 + cases[3].to_s + " " * 2 + "|" + " "*2 + cases[4].to_s + " " * 2 + "|" + " "*2 + cases[5].to_s + " " * 2
    puts " " + " "*3 + " "*5 + "|" + " "*5 + "|" + " "*5
    puts " " + " "*3 + "-"*17
    puts " " + " "*3 + " "*5 + "|" + " "*5 + "|" + " "*5
    puts "c" + " "*3 + " "*2 + cases[6].to_s + " " * 2 + "|" + " "*2 + cases[7].to_s + " " * 2 + "|" + " "*2 + cases[8].to_s + " " * 2
    puts " " + " "*3 + " "*5 + "|" + " "*5 + "|" + " "*5
  end

  def set_case_value(choix, symbol)
    @cases[choix] = symbol
  end

  def is_playable?(choix)
    return @cases[choix] == " " ? true : false
  end

  def victory
    if @cases[0] == @cases[1] && @cases[1] == @cases[2] && @cases[0] != " "
      return true
    elsif @cases[3] == @cases[4] && @cases[4] == @cases[5] && @cases[3] != " "
      return true
    elsif @cases[6] == @cases[7] && @cases[7] == @cases[8] && @cases[6] != " "
      return true
    end

    if @cases[0] == @cases[3] && @cases[3] == @cases[6] && @cases[0] != " "
      return true
    elsif @cases[1] == @cases[4] && @cases[4] == @cases[7] && @cases[1] != " "
      return true
    elsif @cases[2] == @cases[5] && @cases[5] == @cases[8] && @cases[2] != " "
      return true
    end

    if @cases[0] == @cases[4] && @cases[4] == @cases[8] && @cases[0] != " "
      return true
    elsif @cases[2] == @cases[4] && @cases[4] == @cases[6] && @cases[2] != " "
      return true
    end

    return false
  end

  def reset
    @cases = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  def draw_game
    if victory == false && @cases.each {|i| i == "x" || i == "o"}        
      eturn false
    end
  end
end