class SongsController < ApplicationController


  def new
    @artist = Artist.find(params[:artist_id])

    @song = @artist.songs.new
  end

  def create
    @artist = Artist.find(params[:artist_id])
    @song = Song.new(song_params)
    if @song.save
      redirect_to @song
    else
      render 'new'
    end
  end

  def edit
    @song = Song.find(params[:artist_id])
  end

  def destroy
    @song = Song.find(params[:id])

    if @song.destroy
      redirect_to '/', notice: "destroyed"
    else
      redirect_to @song.artist
    end
  end

  private

  def song_params
    params.require(:song).permit(:name, :artist_id)
  end
end
