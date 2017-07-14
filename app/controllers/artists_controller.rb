class ArtistsController < ApplicationController

 def index
   @artists = Artist.all
 end

 def show
   @artist = Artist.find(params[:id])
   @songs = @artist.songs
 end

 def create
   @artist = Artist.new(params[:id])
 end

 def destroy
   @artist = Artist.find(params[:id])
   @artist.destroy
     redirect_to '/', notice: "destroyed"
 end


 private

 def artist_params
   params.
   require(:artist).permit(:name, :image)
 end


end
