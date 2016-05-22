class Location < ActiveRecord::Base
	has_many :locations

	geocoded_by :full_street_address   # can also be an IP address
	reverse_geocoded_by :latitude, :longitude
	after_validation :reverse_geocode  # auto-fetch address
end
