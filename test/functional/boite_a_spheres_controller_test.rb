require 'test_helper'

class BoiteASpheresControllerTest < ActionController::TestCase
  test "should get spheres" do
    get :spheres
    assert_response :success
  end

  test "should get show_sphere" do
    get :show_sphere
    assert_response :success
  end

end
