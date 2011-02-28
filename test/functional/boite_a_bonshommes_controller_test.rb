require 'test_helper'

class BoiteABonshommesControllerTest < ActionController::TestCase
  test "should get bonjour_madame" do
    get :bonjour_madame
    assert_response :success
  end

  test "should get bonjour_monsieur" do
    get :bonjour_monsieur
    assert_response :success
  end

end
