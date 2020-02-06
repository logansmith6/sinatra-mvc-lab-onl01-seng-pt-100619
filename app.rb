require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do

    erb :index
  end

  post '/piglatinize' do

    @piglatinize = PigLatinizer.new(params[:user_phrase])

    erb :user_input
  end

end
