require 'test_helper'

class BoiteADamesControllerTest < ActionController::TestCase
  test "should get bonjour_madame" do
    get :bonjour_madame
    assert_response :success
  end

end
