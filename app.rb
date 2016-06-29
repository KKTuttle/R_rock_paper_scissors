require("sinatra")
require('sinatra/reloader')
require('./lib/rps')
also_reload('lib/**/*.rb')

get('/form') do
  erb(:form)
end

# get('/result') do
#   @winner = params.fetch('player1').rps
#   @winner = params.fetch('player2').rps
#   erb(:result)
# end

get('/result') do
  @player1 = params.fetch('player1')
  @player2 = params.fetch('player2')
  if @player1 == @player2
    "it's a tie"
  elsif @player1.rps?(@player2)
    @winner = "Player 1 wins"
  else
    @winner = "Player 2 wins"
  end
  erb(:result)
end
