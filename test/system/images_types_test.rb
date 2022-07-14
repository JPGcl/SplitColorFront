require "application_system_test_case"

class ImagesTypesTest < ApplicationSystemTestCase
  setup do
    @images_type = images_types(:one)
  end

  test "visiting the index" do
    visit images_types_url
    assert_selector "h1", text: "Images types"
  end

  test "should create images type" do
    visit images_types_url
    click_on "New images type"

    fill_in "Image type description", with: @images_type.image_type_description
    click_on "Create Images type"

    assert_text "Images type was successfully created"
    click_on "Back"
  end

  test "should update Images type" do
    visit images_type_url(@images_type)
    click_on "Edit this images type", match: :first

    fill_in "Image type description", with: @images_type.image_type_description
    click_on "Update Images type"

    assert_text "Images type was successfully updated"
    click_on "Back"
  end

  test "should destroy Images type" do
    visit images_type_url(@images_type)
    click_on "Destroy this images type", match: :first

    assert_text "Images type was successfully destroyed"
  end
end
