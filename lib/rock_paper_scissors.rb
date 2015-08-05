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

puts result
    return result
  end
end
