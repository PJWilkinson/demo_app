require 'test_helper'

class PwUsersControllerTest < ActionController::TestCase
  setup do
    @pw_user = pw_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pw_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pw_user" do
    assert_difference('PwUser.count') do
      post :create, pw_user: { email: @pw_user.email, name: @pw_user.name }
    end

    assert_redirected_to pw_user_path(assigns(:pw_user))
  end

  test "should show pw_user" do
    get :show, id: @pw_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pw_user
    assert_response :success
  end

  test "should update pw_user" do
    put :update, id: @pw_user, pw_user: { email: @pw_user.email, name: @pw_user.name }
    assert_redirected_to pw_user_path(assigns(:pw_user))
  end

  test "should destroy pw_user" do
    assert_difference('PwUser.count', -1) do
      delete :destroy, id: @pw_user
    end

    assert_redirected_to pw_users_path
  end
end
