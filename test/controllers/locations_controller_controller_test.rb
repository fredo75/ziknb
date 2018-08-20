require 'test_helper'

class LocationsControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get locations_controller_index_url
    assert_response :success
  end

  test "should get show" do
    get locations_controller_show_url
    assert_response :success
  end

  test "should get new" do
    get locations_controller_new_url
    assert_response :success
  end

  test "should get create" do
    get locations_controller_create_url
    assert_response :success
  end

  test "should get destroy" do
    get locations_controller_destroy_url
    assert_response :success
  end

end
