require 'sinatra/base'
class App < Sinatra::Application

  get '/' do
    erb :index
  end
  get '/add' do
    erb :add
  end
end