class String
  define_method(:beats) do |bot_choice|
    result = ""
    # bot_choice = bot_choice
    player_choice = self
     #if statement, compare
    if (player_choice == "rock")
      if (bot_choice == "rock")
        #tie
        result = "draw"
      elsif (bot_choice =="scissors")
        #player win
        result = "win"
      else #only bot choice left, paper
        #player lose
        result = "lose"
      end
    elsif (player_choice == "scissors")
      if (bot_choice == "rock")
        #player lose
        result = "lose"
      elsif (bot_choice =="scissors")
        #tie
        result = "tie"
      else #only bot choice left, paper
        #player win
        result = "win"
      end
    else #only player choice left, "paper"
      if (bot_choice == "rock")
        #player win
        result = "win"
      elsif (bot_choice =="scissors")
        #player lose
        result = "lose"
      else #only bot choice left, paper
        #tie
        result = "tie"
      end
    end
puts result
    return result
  end
end
