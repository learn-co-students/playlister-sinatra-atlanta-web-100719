class Artist < ActiveRecord::Base
  include Slugifiable
  extend Slugfinder

  has_many :songs
  has_many :genres, through: :songs
end
