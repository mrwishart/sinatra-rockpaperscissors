require 'sinatra'
require 'sinatra/contrib/all' if development?
require_relative './models/game'

get '/:move1/:move2' do
  game = Game.new(params)
  @result = game.result()
  erb(:result)
end

get '/:move1' do
  game = Game.new(params)
  @result = game.result()
  erb(:result)
end
