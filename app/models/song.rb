class Song < ApplicationRecord
 belongs_to :artist, dependent: :destroy
 

 validates :song_name, presence: true


end
