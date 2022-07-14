require "application_system_test_case"

class PlansTypesTest < ApplicationSystemTestCase
  setup do
    @plans_type = plans_types(:one)
  end

  test "visiting the index" do
    visit plans_types_url
    assert_selector "h1", text: "Plans types"
  end

  test "should create plans type" do
    visit plans_types_url
    click_on "New plans type"

    fill_in "Plan description", with: @plans_type.plan_description
    click_on "Create Plans type"

    assert_text "Plans type was successfully created"
    click_on "Back"
  end

  test "should update Plans type" do
    visit plans_type_url(@plans_type)
    click_on "Edit this plans type", match: :first

    fill_in "Plan description", with: @plans_type.plan_description
    click_on "Update Plans type"

    assert_text "Plans type was successfully updated"
    click_on "Back"
  end

  test "should destroy Plans type" do
    visit plans_type_url(@plans_type)
    click_on "Destroy this plans type", match: :first

    assert_text "Plans type was successfully destroyed"
  end
end
