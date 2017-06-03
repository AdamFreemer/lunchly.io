module GeoLocate
  def location(ip)
    base = 'http://ip-api.com/json/'
    options = '?fields=lat,lon,status'
    response = RestClient.get(base + ip + options)
    JSON.parse(response)
  end
end