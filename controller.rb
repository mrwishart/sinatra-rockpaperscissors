require 'sinatra'
require 'sinatra/contrib/all' if development?

get '/:move1/:move2' do
  move1 = params[:move1].to_s.downcase
  move2 = params[:move2].to_s.downcase
  return move1 + ' ' + move2
end
