require 'sinatra'
require 'sinatra/contrib/all' if development?

get '/:move1/:move2' do
  move1 = params[:move1].to_s.downcase
  move2 = params[:move2].to_s.downcase

  win_conditions = {
    "scissors" => "paper",
    "paper" => "rock",
    "rock" => "scissors"
  }

  if move1 == move2
    return "Draw!"
  elsif win_conditions[move1] == move2
    return "Player 1 wins with #{move1}"
  elsif move1 == win_conditions[move2]
    return "Player 2 wins with #{move2}"
  else
    return "Pick actual options, ya dick!"
  end
end
