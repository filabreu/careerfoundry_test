require "test_helper"

class OpenWeatherMapClientTest < Minitest::Test  
  def test_daily_weather_success
    city = City.new(id: 1)
    client = OpenWeatherMapClient.new(city)

    uri = URI("http://api.openweathermap.org/data/2.5/weather?id=1&APPID=d5a03992af083a087d9235298ea2bc0b")

    response_mock = mock()
    response_mock.expects(:is_a?).with(Net::HTTPSuccess).returns(true)
    response_mock.expects(:body).returns({ foo: "bar" }.to_json)

    Net::HTTP.expects(:get_response).returns(response_mock)

    client.get_daily_weather

    assert client.success
    assert_equal({ "foo" => "bar" }, client.data)
  end
end
