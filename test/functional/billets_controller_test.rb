require 'test_helper'

class BilletsControllerTest < ActionController::TestCase
  setup do
    @billet = billets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:billets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create billet" do
    assert_difference('Billet.count') do
      post :create, :billet => @billet.attributes
    end

    assert_redirected_to billet_path(assigns(:billet))
  end

  test "should show billet" do
    get :show, :id => @billet.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @billet.to_param
    assert_response :success
  end

  test "should update billet" do
    put :update, :id => @billet.to_param, :billet => @billet.attributes
    assert_redirected_to billet_path(assigns(:billet))
  end

  test "should destroy billet" do
    assert_difference('Billet.count', -1) do
      delete :destroy, :id => @billet.to_param
    end

    assert_redirected_to billets_path
  end
end
