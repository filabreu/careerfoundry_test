require "test_helper"

class CityTest < ActiveSupport::TestCase  
  # Class methods

  def test_city_data
    assert City.city_data.is_a?(Array)
    assert City.city_data[0].is_a?(Hash)
    assert City.city_data[0].has_key?("id")
    assert City.city_data[0].has_key?("name")
    assert City.city_data[0].has_key?("country")
    assert City.city_data[0].has_key?("coord")
  end

  def test_find_by_name
    city = City.find_by_name("New York")

    assert city.is_a?(City)
    assert_equal("New York", city.name)
  end
end
