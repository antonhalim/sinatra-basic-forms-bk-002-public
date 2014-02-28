require './environment'

module FormsLab
  class App < Sinatra::Base
    get '/' do
      @songs = Song.all
      erb :'songs/index'
    end

    get '/songs/:id' do
      @song = Song[params[:id]]
      erb :'songs/show'
    end
  end
end
