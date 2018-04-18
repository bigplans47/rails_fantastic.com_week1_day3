class Artist < ActiveRecord::Base
  has_many :albums
  validates :name, :genre, :presence => true
end
