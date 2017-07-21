class CitiesController < ApplicationController
  def index
    @cities = City.random(6)
  end

  def show
    @city = City.find_by_country_and_name(params[:country], params[:city])

    if @city
      render 'show'
    else
      redirect_to root_path, alert: "City not found. Please try again."
    end
  end
end
