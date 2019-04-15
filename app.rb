require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    @reverse = params["name"].reverse
    erb :reversename
  end
  
  get '/square/:number' do 
    @square_num = params["number"].to_i * params["number"].to_i
    erb :square
  end
  
  get '/say/:number/:phrase' do 
    @number = params["number"].to_i
    @phrase = params["phrase"]
    erb :say
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @long_string = params.values.join(" ") + "."
    erb :say
  end
end