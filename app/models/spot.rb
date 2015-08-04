class Spot < ActiveRecord::Base
	attr_accessible :title, :address, :street, :latitude, :longitude
	geocoded_by :title
	after_validation :geocode, :reverse_geocode, :if => :street_changed?
	has_many :tricks
end
