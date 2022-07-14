require "test_helper"

class ImagesTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @images_type = images_types(:one)
  end

  test "should get index" do
    get images_types_url
    assert_response :success
  end

  test "should get new" do
    get new_images_type_url
    assert_response :success
  end

  test "should create images_type" do
    assert_difference("ImagesType.count") do
      post images_types_url, params: { images_type: { image_type_description: @images_type.image_type_description } }
    end

    assert_redirected_to images_type_url(ImagesType.last)
  end

  test "should show images_type" do
    get images_type_url(@images_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_images_type_url(@images_type)
    assert_response :success
  end

  test "should update images_type" do
    patch images_type_url(@images_type), params: { images_type: { image_type_description: @images_type.image_type_description } }
    assert_redirected_to images_type_url(@images_type)
  end

  test "should destroy images_type" do
    assert_difference("ImagesType.count", -1) do
      delete images_type_url(@images_type)
    end

    assert_redirected_to images_types_url
  end
end
