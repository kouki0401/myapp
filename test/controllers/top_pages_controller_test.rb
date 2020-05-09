require 'test_helper'

class TopPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get reserve" do
    get top_pages_reserve_url
    assert_response :success
  end

  test "should get home" do
    get top_pages_home_url
    assert_response :success
  end

  test "should get trainer" do
    get top_pages_trainer_url
    assert_response :success
  end

  test "should get price" do
    get top_pages_price_url
    assert_response :success
  end

  test "should get store" do
    get top_pages_store_url
    assert_response :success
  end

  test "should get help" do
    get top_pages_help_url
    assert_response :success
  end

end
