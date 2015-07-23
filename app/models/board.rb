class Board < ActiveRecord::Base
  has_many :gifs
  has_many :tags, through: :gifs
end
