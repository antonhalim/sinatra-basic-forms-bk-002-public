class App < Sinatra::Base
  set :views, Proc.new { File.join(root, '../views')}

  get '/' do
    @songs = Song.all
    erb :'songs/index'
  end

  get '/songs/:id' do
    @song = Song.find(params[:id])
    erb :'songs/show'
  end

  get '/songs/:id/edit' do
    @id = params["id"]
    @song = Song.find(@id)
    erb :'songs/edit'
  end

  post '/songs/:id/edit' do
    @song = Song.find(params["id"])
    @song.title = params["Title"]
    @song.artist = params["Artist Name"]
    @song.album = params["Album"]
    @song.genre = params["Genre"]
    @song.length = params["Length"]
    @song.save
    redirect "/songs/#{@song.id}"
  end
end
