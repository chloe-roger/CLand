require 'test_helper'

class SpheresControllerTest < ActionController::TestCase
  setup do
    @sphere = spheres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spheres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sphere" do
    assert_difference('Sphere.count') do
      post :create, :sphere => @sphere.attributes
    end

    assert_redirected_to sphere_path(assigns(:sphere))
  end

  test "should show sphere" do
    get :show, :id => @sphere.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @sphere.to_param
    assert_response :success
  end

  test "should update sphere" do
    put :update, :id => @sphere.to_param, :sphere => @sphere.attributes
    assert_redirected_to sphere_path(assigns(:sphere))
  end

  test "should destroy sphere" do
    assert_difference('Sphere.count', -1) do
      delete :destroy, :id => @sphere.to_param
    end

    assert_redirected_to spheres_path
  end
end
