class SongsController < ApplicationController

def create
@song = Song.create(song_params.merge(artist_id: params[:artist_id]))
 if @song.save
   redirect_to artist_path(params[:artist_id]), notice: "Added song to the list"
 else
   render artist_path, notice: "Unsuccessful, please add the song again."
 end
end
def new
  @artist = Artist.find(params[:artist_id])

  @song = @artist.songs.new

end
def destroy
  @song = Song.find(params[:id])

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
