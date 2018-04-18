class Artist < ActiveRecord::Base
  validates :name, :genre, :presence => true
end
