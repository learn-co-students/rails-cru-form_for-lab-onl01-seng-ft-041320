class Genre < ApplicationRecord
    has_many :songs, class_name: "song", foreign_key: "genre_id"
end
