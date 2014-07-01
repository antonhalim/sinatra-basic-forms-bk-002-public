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
end

