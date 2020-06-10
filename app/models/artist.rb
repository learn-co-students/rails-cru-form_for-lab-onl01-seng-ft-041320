class Artist < ApplicationRecord
    has_many :songs, class_name: "Song", foreign_key: "artist_id"
end
