require("pry")

class String
  define_method(:rps?) do |arg|
    choices = { "paper" => "p" , "rock"  => "r", "scissors" => "s"}
    player1 = choices.fetch(self)
    player2 = choices.fetch(arg)


    if ((player1 == "p" && player2 == "r") || (player1 == "r" && player2 == "s") || (player1 == "s" && player2 == "p"))
      return true
    else
      return false
    end
  end
end
