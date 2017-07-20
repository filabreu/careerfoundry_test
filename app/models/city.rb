class City
  attr_accessor :id, :name, :country, :coord

  def initialize(attributes)
    @id = attributes["id"]
    @name = attributes["name"]
    @country = attributes["country"]
    @coord = attributes["coord"]
  end

  def self.city_data
    @city_data ||= JSON.parse(File.read('vendor/openweathermap/city.list.json'))
  end

  def self.find_by_name(name)
    result = self.city_data.find { |city| city["name"] == name }

    result ? self.new(result) : nil
  end
end
