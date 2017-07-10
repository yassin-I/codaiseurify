class Song < ApplicationRecord
  def self.order_by_music_genre
      order(:music_genre)
    end

end
