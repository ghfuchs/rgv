require 'test_helper'

class RegisterusersControllerTest < ActionController::TestCase
  setup do
    @registeruser = registerusers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registerusers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registeruser" do
    assert_difference('Registeruser.count') do
      post :create, registeruser: @registeruser.attributes
    end

    assert_redirected_to registeruser_path(assigns(:registeruser))
  end

  test "should show registeruser" do
    get :show, id: @registeruser.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @registeruser.to_param
    assert_response :success
  end

  test "should update registeruser" do
    put :update, id: @registeruser.to_param, registeruser: @registeruser.attributes
    assert_redirected_to registeruser_path(assigns(:registeruser))
  end

  test "should destroy registeruser" do
    assert_difference('Registeruser.count', -1) do
      delete :destroy, id: @registeruser.to_param
    end

    assert_redirected_to registerusers_path
  end
end
