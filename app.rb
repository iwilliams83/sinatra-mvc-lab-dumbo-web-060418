require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    phrase = params[:user_phrase]
    translator = PigLatinizer.new
    @piglatin = translator.piglatinize(phrase)
    erb :translated
  end

end
