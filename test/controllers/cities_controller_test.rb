require 'test_helper'

class CitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get root_path
    assert_response :success
  end

  test "should get show" do
    get city_path, params: { country: "US", city: "New York" }
    assert_response :success
  end

  test "should redirect to root path when City is not find when get show" do
    get city_path
    assert_response :redirect
  end
end
