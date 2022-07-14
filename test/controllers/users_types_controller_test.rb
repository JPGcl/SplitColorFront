require "test_helper"

class UsersTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @users_type = users_types(:one)
  end

  test "should get index" do
    get users_types_url
    assert_response :success
  end

  test "should get new" do
    get new_users_type_url
    assert_response :success
  end

  test "should create users_type" do
    assert_difference("UsersType.count") do
      post users_types_url, params: { users_type: { user_description: @users_type.user_description } }
    end

    assert_redirected_to users_type_url(UsersType.last)
  end

  test "should show users_type" do
    get users_type_url(@users_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_users_type_url(@users_type)
    assert_response :success
  end

  test "should update users_type" do
    patch users_type_url(@users_type), params: { users_type: { user_description: @users_type.user_description } }
    assert_redirected_to users_type_url(@users_type)
  end

  test "should destroy users_type" do
    assert_difference("UsersType.count", -1) do
      delete users_type_url(@users_type)
    end

    assert_redirected_to users_types_url
  end
end
