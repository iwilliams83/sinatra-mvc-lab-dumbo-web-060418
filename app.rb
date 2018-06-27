require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    phrase = params[:user_phrase]
    translator = PigLatinizer.new
    if phrase.include?(" ")
      @piglatin = translator.piglatinize_sentence(phrase)
    else
      @piglatin = translator.piglatinize_word(phrase)
    end
    @piglatin
  end

  erb :translated
end
