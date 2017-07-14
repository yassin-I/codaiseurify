class SongsController < ApplicationController


def new
  @artist = Artist.find(params[:artist_id])

  @song = @artist.songs.new
  def create
    @song = Song.new(params[:song].permit(params[:artist_id])
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
  @song = Song.find(params[:artist_id])

  if @song.destroy
    redirect_to @song.artist
  else
    redirect_to @song.artist
  end
end

def song_params
 params.
 require(:song).permit(:name, :artist_id)
end
end
