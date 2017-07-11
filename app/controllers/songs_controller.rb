class SongsController < ApplicationController
 def index
   @songs = Song.all
 end

def show
 @songs = Song.all
end

def create
@song = Song.create(song_params.merge(artist_id: params[:artist_id]))
 if @song.save
   redirect_to artist_path(params[:artist_id]), notice: "Song has been added to the list"
 else
   render artist_path, notice: "Unsuccessful, please try add the song again."
 end
end

def destroy
 @song = Song.find(params[:id])
 @artist = @song.artist
 @artist.songs.destroy(@song)
 redirect_to artist_path(@song.artist_id)
end

def song_params
 params.
 require(:song).permit(:song_name, :artist)
end
end
