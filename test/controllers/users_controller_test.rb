require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = User.new(name: 'test user', email: 'divn2661@gmail.com', password: '12345')
    @user.save
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    unq_user = User.new(name: 'test user', email: 'divn@gmail.com', password: '12345')
    assert_difference('User.count') do
      post users_url, params: {user: {email: unq_user.email, name: unq_user.name, password: unq_user.password}}
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: {user: {email: @user.email, name: @user.name, password: @user.password}}
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
