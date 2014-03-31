require 'sinatra/base'
class App < Sinatra::Application
  PRODUCT_ARRAY = []
  get '/' do
    erb :index, locals: {:product => PRODUCT_ARRAY}
  end

  get '/add' do
    erb :add
  end

  post '/' do
    PRODUCT_ARRAY << params[:product]
    redirect '/'
  end
end