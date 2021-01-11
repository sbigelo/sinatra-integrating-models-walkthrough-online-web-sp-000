require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base

  post '/' do
    text_from_user = params[:user_text]

    erb :results
  end

  get '/' do
    @analyzed_text = TextAnalyzer.new(params[:user_text])
    erb :index
  end

end
