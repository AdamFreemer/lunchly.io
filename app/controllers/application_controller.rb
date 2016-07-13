class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

	def get_remote_ip
		if request.remote_ip == '127.0.0.1' || request.remote_ip == '::1' ## for dev testing both IPv4 & IPv6
		  @my_ip = '68.45.67.89'
		else
		  @my_ip = request.remote_ip
		end
	end

	def get_coordinates
		coordinates = {}
		if request.location.latitude == 0 && request.location.longitude == 0
			loc = Geocoder.search("50.78.167.161").first
			lat = loc.latitude
			lon = loc.longitude
		else
			lat = request.location.latitude
			lon = request.location.longitude
		end
		coordinates[:lat] = lat
		coordinates[:lon] = lon
		return coordinates
	end
end
