require "test_helper"

class CommentsTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comments_type = comments_types(:one)
  end

  test "should get index" do
    get comments_types_url
    assert_response :success
  end

  test "should get new" do
    get new_comments_type_url
    assert_response :success
  end

  test "should create comments_type" do
    assert_difference("CommentsType.count") do
      post comments_types_url, params: { comments_type: { commment_description: @comments_type.commment_description } }
    end

    assert_redirected_to comments_type_url(CommentsType.last)
  end

  test "should show comments_type" do
    get comments_type_url(@comments_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_comments_type_url(@comments_type)
    assert_response :success
  end

  test "should update comments_type" do
    patch comments_type_url(@comments_type), params: { comments_type: { commment_description: @comments_type.commment_description } }
    assert_redirected_to comments_type_url(@comments_type)
  end

  test "should destroy comments_type" do
    assert_difference("CommentsType.count", -1) do
      delete comments_type_url(@comments_type)
    end

    assert_redirected_to comments_types_url
  end
end
