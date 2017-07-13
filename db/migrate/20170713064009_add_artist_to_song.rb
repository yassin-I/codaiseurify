class AddArtistToSong < ActiveRecord::Migration[5.1]
  def change
    add_reference :songs, :artists, :image foreign_key: true
  end
end
