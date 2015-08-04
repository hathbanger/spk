class Spot < ActiveRecord::Base
	attr_accessible :street, :latitude, :longitude
	geocoded_by :street
	after_validation :geocode, :if => :street_changed?
	has_many :tricks
end
