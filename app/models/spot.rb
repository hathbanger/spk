class Spot < ActiveRecord::Base
	attr_accessible :title, :street, :latitude, :longitude
	geocoded_by :title
	after_validation :geocode, :if => :street_changed?
	has_many :tricks
end
