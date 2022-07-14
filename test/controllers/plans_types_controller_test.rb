require "test_helper"

class PlansTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plans_type = plans_types(:one)
  end

  test "should get index" do
    get plans_types_url
    assert_response :success
  end

  test "should get new" do
    get new_plans_type_url
    assert_response :success
  end

  test "should create plans_type" do
    assert_difference("PlansType.count") do
      post plans_types_url, params: { plans_type: { plan_description: @plans_type.plan_description } }
    end

    assert_redirected_to plans_type_url(PlansType.last)
  end

  test "should show plans_type" do
    get plans_type_url(@plans_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_plans_type_url(@plans_type)
    assert_response :success
  end

  test "should update plans_type" do
    patch plans_type_url(@plans_type), params: { plans_type: { plan_description: @plans_type.plan_description } }
    assert_redirected_to plans_type_url(@plans_type)
  end

  test "should destroy plans_type" do
    assert_difference("PlansType.count", -1) do
      delete plans_type_url(@plans_type)
    end

    assert_redirected_to plans_types_url
  end
end
