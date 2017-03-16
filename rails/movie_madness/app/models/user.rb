class User < ApplicationRecord
    has_many :favorite_films
    has_many :films, through: :favorite_films
end
