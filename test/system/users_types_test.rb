require "application_system_test_case"

class UsersTypesTest < ApplicationSystemTestCase
  setup do
    @users_type = users_types(:one)
  end

  test "visiting the index" do
    visit users_types_url
    assert_selector "h1", text: "Users types"
  end

  test "should create users type" do
    visit users_types_url
    click_on "New users type"

    fill_in "User description", with: @users_type.user_description
    click_on "Create Users type"

    assert_text "Users type was successfully created"
    click_on "Back"
  end

  test "should update Users type" do
    visit users_type_url(@users_type)
    click_on "Edit this users type", match: :first

    fill_in "User description", with: @users_type.user_description
    click_on "Update Users type"

    assert_text "Users type was successfully updated"
    click_on "Back"
  end

  test "should destroy Users type" do
    visit users_type_url(@users_type)
    click_on "Destroy this users type", match: :first

    assert_text "Users type was successfully destroyed"
  end
end
