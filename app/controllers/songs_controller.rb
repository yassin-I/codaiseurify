class SongsController < ApplicationController
  def index
   @songs = Song.all
  end

  def new
  @song = Song.new
  end

  def show
  @song = Song.find(params[:id])
  end

  def create
  song_params = params.require(:song).permit(:music_genre, :producer, :image_url)

  @song = Song.new(song_params)

  if @song.save
     redirect_to @song
  else
     render 'new'
  end
  end
end
