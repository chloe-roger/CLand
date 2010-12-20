require 'test_helper'

class HistoiresControllerTest < ActionController::TestCase
  setup do
    @histoire = histoires(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:histoires)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create histoire" do
    assert_difference('Histoire.count') do
      post :create, :histoire => @histoire.attributes
    end

    assert_redirected_to histoire_path(assigns(:histoire))
  end

  test "should show histoire" do
    get :show, :id => @histoire.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @histoire.to_param
    assert_response :success
  end

  test "should update histoire" do
    put :update, :id => @histoire.to_param, :histoire => @histoire.attributes
    assert_redirected_to histoire_path(assigns(:histoire))
  end

  test "should destroy histoire" do
    assert_difference('Histoire.count', -1) do
      delete :destroy, :id => @histoire.to_param
    end

    assert_redirected_to histoires_path
  end
end
