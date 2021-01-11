require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base

  get '/' do
    @analyzed_text = TextAnalyzer.new(params[:user_text])
    erb :index
  end

  post '/' do
    text_from_user = params[:user_text]

    erb :results
  end

  get '/index' do
    erb :index
  end

  get '/layout' do
    erb :layout
  end

  get '/results' do
    erb :results
  end

end
