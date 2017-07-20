class OpenWeatherMapClient
  attr_accessor :city, :response, :success, :data

  def initialize(city)
    @city = city
  end

  def get_daily_weather
    make_request("/weather", { id: city.id })
  end

  private

  def base_url
    "http://api.openweathermap.org/data/2.5"
  end

  def api_key
    "d5a03992af083a087d9235298ea2bc0b"
  end

  def make_request(url, params)    
    request_uri = URI("#{base_url}#{url}")
    request_uri.query = URI.encode_www_form(params.merge({ :APPID => api_key }))

    @response = Net::HTTP.get_response(request_uri)
    @success = @response.is_a?(Net::HTTPSuccess)
    @data = JSON.parse(@response.body)
  end
end
