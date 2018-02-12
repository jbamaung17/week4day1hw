require('sinatra')
require('sinatra/contrib/all')

require_relative('./models/game.rb')

get '/play/:thing1/:thing2' do
  thing1 = params[:thing1]
  thing2 = params[:thing2]
  game = Game.new(thing1, thing2)
  @game_result = game.play()
  erb(:results)
end
