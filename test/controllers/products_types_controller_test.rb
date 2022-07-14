require "test_helper"

class ProductsTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @products_type = products_types(:one)
  end

  test "should get index" do
    get products_types_url
    assert_response :success
  end

  test "should get new" do
    get new_products_type_url
    assert_response :success
  end

  test "should create products_type" do
    assert_difference("ProductsType.count") do
      post products_types_url, params: { products_type: { name: @products_type.name, product_type_description: @products_type.product_type_description } }
    end

    assert_redirected_to products_type_url(ProductsType.last)
  end

  test "should show products_type" do
    get products_type_url(@products_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_products_type_url(@products_type)
    assert_response :success
  end

  test "should update products_type" do
    patch products_type_url(@products_type), params: { products_type: { name: @products_type.name, product_type_description: @products_type.product_type_description } }
    assert_redirected_to products_type_url(@products_type)
  end

  test "should destroy products_type" do
    assert_difference("ProductsType.count", -1) do
      delete products_type_url(@products_type)
    end

    assert_redirected_to products_types_url
  end
end
