class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :music_genre
      t.string :producer
      t.string :image_url

      t.timestamps
    end
  end
end
