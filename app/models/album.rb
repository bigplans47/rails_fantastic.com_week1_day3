class Album < ActiveRecord::Base
  belongs_to :artist

  validates :review, :year, :title, :presence => true
end
