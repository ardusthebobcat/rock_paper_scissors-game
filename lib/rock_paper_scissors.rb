class String
  define_method(:beats) do |bot_choice|
    result = ""
    player_choice = self.downcase

    #define and fill hash
    result_hash = Hash.new()
    result_hash = {"rock" => "scissors", "scissors" => "paper", "paper" => "rock"}

    #chooses a move for the bot if we pass it an empty choice
    if (bot_choice == "")
      rng_choice = rand(2) #0 rock, 1 scissors, 2 paper
      if (rng_choice==0)#rock
        bot_choice == "rock"
      elsif (rng_choice == 1) #scissors
        bot_choice == "scissors"
      else #paper
        bot_choice == "paper"
      end
    end

    hash_choice =result_hash[player_choice]

    if (player_choice == bot_choice)
      result = "tie"
    elsif (bot_choice == hash_choice) #if bot chose result that player's choice beats, win
      result = "win"
    else
      result="lose"
    end

    #nested if's to compare all possible results
    #sets results var to match
    # if (player_choice == "rock")
    #   if (bot_choice == "rock")
    #     #tie
    #     result = "draw"
    #   elsif (bot_choice =="scissors")
    #     #player win
    #     result = "win"
    #   else #only bot choice left, paper
    #     #player lose
    #     result = "lose"
    #   end
    # elsif (player_choice == "scissors")
    #   if (bot_choice == "rock")
    #     #player lose
    #     result = "lose"
    #   elsif (bot_choice =="scissors")
    #     #tie
    #     result = "tie"
    #   else #only bot choice left, paper
    #     #player win
    #     result = "win"
    #   end
    # else #only player choice left, "paper"
    #   if (bot_choice == "rock")
    #     #player win
    #     result = "win"
    #   elsif (bot_choice =="scissors")
    #     #player lose
    #     result = "lose"
    #   else #only bot choice left, paper
    #     #tie
    #     result = "tie"
    #   end
    # end
puts result
    return result
  end
end
