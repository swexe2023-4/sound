class Playlist < ApplicationRecord
    has_one_attached :image
    has_many :playlist_songs, dependent: :destroy
end
