class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

	def get_remote_ip
		if request.remote_ip == '127.0.0.1' || '::1' ## for dev testing both IPv4 & IPv6
		  @my_ip = '68.45.67.89'
		else
		  @my_ip = request.remote_ip
		end
	end

end
