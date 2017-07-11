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

  def edit
    @song = Song.find(params[:id])
  end

  def update
  @song = Song.find(params[:id])

  song_params = params.require(:song).permit(:music_genre, :producer, :image_url)

  if @song.update_attributes(song_params)
    redirect_to @song
  else
    render 'edit'
  end
  end

  def destroy
  @song = Song.find(params[:id])

  @song.destroy

  redirect_to songs_path
end
end
