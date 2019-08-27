require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @pig_latin = PigLatinizer.new
        @text_to_pl = params[:user_phrase]
        erb :pig_latined
    end

end