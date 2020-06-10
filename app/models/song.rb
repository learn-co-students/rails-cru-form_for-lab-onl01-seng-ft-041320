class Song < ApplicationRecord
    belongs_to :artist, class_name: "Artist", foreign_key: "artist_id"
    belongs_to :genre, class_name: "Genre", foreign_key: "genre_id"
end
