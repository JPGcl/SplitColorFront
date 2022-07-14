require "application_system_test_case"

class ProductsTypesTest < ApplicationSystemTestCase
  setup do
    @products_type = products_types(:one)
  end

  test "visiting the index" do
    visit products_types_url
    assert_selector "h1", text: "Products types"
  end

  test "should create products type" do
    visit products_types_url
    click_on "New products type"

    fill_in "Name", with: @products_type.name
    fill_in "Product type description", with: @products_type.product_type_description
    click_on "Create Products type"

    assert_text "Products type was successfully created"
    click_on "Back"
  end

  test "should update Products type" do
    visit products_type_url(@products_type)
    click_on "Edit this products type", match: :first

    fill_in "Name", with: @products_type.name
    fill_in "Product type description", with: @products_type.product_type_description
    click_on "Update Products type"

    assert_text "Products type was successfully updated"
    click_on "Back"
  end

  test "should destroy Products type" do
    visit products_type_url(@products_type)
    click_on "Destroy this products type", match: :first

    assert_text "Products type was successfully destroyed"
  end
end
