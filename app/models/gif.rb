class Gif < ActiveRecord::Base
  belongs_to :board
  has_many :tags
end
