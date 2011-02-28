require 'test_helper'

class BoiteAGarsControllerTest < ActionController::TestCase
  test "should get bonjour_monsieur" do
    get :bonjour_monsieur
    assert_response :success
  end

end
