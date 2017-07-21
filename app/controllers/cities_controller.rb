class CitiesController < ApplicationController
  def index
    @cities = City.random(6)
  end
end
