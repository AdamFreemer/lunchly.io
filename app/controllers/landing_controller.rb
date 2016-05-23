class LandingController < ApplicationController
  
  def index
		get_remote_ip 
		get_coordinates
  end
end
