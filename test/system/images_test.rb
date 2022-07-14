require "application_system_test_case"

class ImagesTest < ApplicationSystemTestCase
  setup do
    @image = images(:one)
  end

  test "visiting the index" do
    visit images_url
    assert_selector "h1", text: "Images"
  end

  test "should create image" do
    visit images_url
    click_on "New image"

    fill_in "Date input hash", with: @image.date_input_hash
    fill_in "Date output hash", with: @image.date_output_hash
    fill_in "Description", with: @image.description
    fill_in "Image local url", with: @image.image_local_url
    fill_in "Image parent", with: @image.image_parent_id
    fill_in "Image type", with: @image.image_type_id
    fill_in "Image url", with: @image.image_url
    fill_in "Input hash", with: @image.input_hash
    fill_in "Output hash", with: @image.output_hash
    click_on "Create Image"

    assert_text "Image was successfully created"
    click_on "Back"
  end

  test "should update Image" do
    visit image_url(@image)
    click_on "Edit this image", match: :first

    fill_in "Date input hash", with: @image.date_input_hash
    fill_in "Date output hash", with: @image.date_output_hash
    fill_in "Description", with: @image.description
    fill_in "Image local url", with: @image.image_local_url
    fill_in "Image parent", with: @image.image_parent_id
    fill_in "Image type", with: @image.image_type_id
    fill_in "Image url", with: @image.image_url
    fill_in "Input hash", with: @image.input_hash
    fill_in "Output hash", with: @image.output_hash
    click_on "Update Image"

    assert_text "Image was successfully updated"
    click_on "Back"
  end

  test "should destroy Image" do
    visit image_url(@image)
    click_on "Destroy this image", match: :first

    assert_text "Image was successfully destroyed"
  end
end
