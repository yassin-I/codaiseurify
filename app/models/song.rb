class Song < ApplicationRecord
  belongs_to :artist

  def self.order_by_music_genre
      order(:music_genre)
  end

  class Song
  validates :music_genre, presence: true
  validates :music_genre, uniqueness: true

  validates :producer, presence: true
  validates :producer, uniqueness: true
  validates :image_url, length: { maximum: 255 }, allow_blank: true
end
