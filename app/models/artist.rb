class Artist < ApplicationRecord
has_many :songs, dependent: :destroy
has_many :photos
mount_uploader :image, ImageUploader
validates :name, presence: true

validates :image, presence: true
end
