require "test_helper"

class Admin::Product::StocksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_product_stock = admin_product_stocks(:one)
  end

  test "should get index" do
    get admin_product_stocks_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_product_stock_url
    assert_response :success
  end

  test "should create admin_product_stock" do
    assert_difference("Admin::Product::Stock.count") do
      post admin_product_stocks_url, params: { admin_product_stock: { amount: @admin_product_stock.amount, product_id: @admin_product_stock.product_id, size: @admin_product_stock.size } }
    end

    assert_redirected_to admin_product_stock_url(Admin::Product::Stock.last)
  end

  test "should show admin_product_stock" do
    get admin_product_stock_url(@admin_product_stock)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_product_stock_url(@admin_product_stock)
    assert_response :success
  end

  test "should update admin_product_stock" do
    patch admin_product_stock_url(@admin_product_stock), params: { admin_product_stock: { amount: @admin_product_stock.amount, product_id: @admin_product_stock.product_id, size: @admin_product_stock.size } }
    assert_redirected_to admin_product_stock_url(@admin_product_stock)
  end

  test "should destroy admin_product_stock" do
    assert_difference("Admin::Product::Stock.count", -1) do
      delete admin_product_stock_url(@admin_product_stock)
    end

    assert_redirected_to admin_product_stocks_url
  end
end
