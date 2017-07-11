class ArtistsController < ApplicationController
 def index
   @artists = Artist.all
 end

 def show
   @artist = Artist.find(params[:id])
   @song = Song.new
 end

 def new
   @artist = Artist.new
 end

 def create
   @artist = Artist.new(params[:id])
 end

 def destroy
   @artist = Artist.find(params[:id])
   @artist.destroy
     redirect_to artists_path
 end

 def edit
   @artist = Artist.find(params[:id])
 end

 def update
   @artist = Artist.find(params[:id])

   if @artist.update_attributes(artist_params)
     redirect_to @artist, notice: "Updated"
   else
     render 'edit'
   end
 end

 def artist_params
   params.
   require(:artist).permit(:artist_name, :artist_image)
 end

end
