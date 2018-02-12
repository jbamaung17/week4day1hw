require('sinatra')
require('sinatra/contrib/all')

get '/play/:thing1/:thing2' do
  thing1 = params[:thing1]
  thing2 = params[:thing2]
  if thing1 == "rock" && thing2 == "scissors"
    return "rock wins!"
  elsif thing1 == "rock" && thing2 == "paper"
    return "paper wins!"
  elsif thing1 == "rock" && thing2 == "rock"
    return "it's a draw!"
  elsif thing1 == "paper" && thing2 == "rock"
    return "paper wins!"
  elsif thing1 == "paper" && thing2 == "scissors"
    return "scissors wins!"
  elsif thing1 == "paper" && thing2 == "paper"
    return "it's a draw!"
  elsif thing1 == "scissors" && thing2 == "rock"
    return "rock wins!"
  elsif thing1 == "scissors" && thing2 == "paper"
    return "scissors wins!"
  elsif thing1 == "scissors" && thing2 == "scissors"
    return "it's a draw!"
  end
end
