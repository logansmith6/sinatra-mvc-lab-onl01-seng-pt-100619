require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do

    erb :index
  end

  post '/piglatinize' do
    pig = PigLatinizer.new
    @piglatinize = pig.piglatinize(params[:user_phrase])


  end

end
