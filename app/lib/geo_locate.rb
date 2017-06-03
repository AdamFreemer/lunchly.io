module GeoLocate
  def location(ip='::1')
    if request.remote_ip == '127.0.0.1' || request.remote_ip == '::1' ## for dev testing both IPv4 & IPv6
      locate('68.45.67.89')
    else
      locate(ip)
    end
  end

  def locate(ip)
    base = 'http://ip-api.com/json/'
    options = '?fields=lat,lon,status'
    response = RestClient.get(base + ip + options)
    JSON.parse(response)
  end
end