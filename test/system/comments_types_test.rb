require "application_system_test_case"

class CommentsTypesTest < ApplicationSystemTestCase
  setup do
    @comments_type = comments_types(:one)
  end

  test "visiting the index" do
    visit comments_types_url
    assert_selector "h1", text: "Comments types"
  end

  test "should create comments type" do
    visit comments_types_url
    click_on "New comments type"

    fill_in "Commment description", with: @comments_type.commment_description
    click_on "Create Comments type"

    assert_text "Comments type was successfully created"
    click_on "Back"
  end

  test "should update Comments type" do
    visit comments_type_url(@comments_type)
    click_on "Edit this comments type", match: :first

    fill_in "Commment description", with: @comments_type.commment_description
    click_on "Update Comments type"

    assert_text "Comments type was successfully updated"
    click_on "Back"
  end

  test "should destroy Comments type" do
    visit comments_type_url(@comments_type)
    click_on "Destroy this comments type", match: :first

    assert_text "Comments type was successfully destroyed"
  end
end
