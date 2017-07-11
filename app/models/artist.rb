class Artist < ApplicationRecord
has_many :songs, dependent: :destroy
mount_uploader :artist_image, ImageUploader
validates :artist_name, presence: true

validates :artist_image, presence: true
end
