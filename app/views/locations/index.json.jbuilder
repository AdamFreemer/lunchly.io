json.array!(@locations) do |location|
  json.extract! location, :id, :name, :latitude, :longitude, :city, :state, :country, :zip_code
  json.url location_url(location, format: :json)
end
