require 'test_helper'

class StockpilesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get stockpiles_index_url
    assert_response :success
  end

  test "should get create" do
    get stockpiles_create_url
    assert_response :success
  end

  test "should get show" do
    get stockpiles_show_url
    assert_response :success
  end

end
