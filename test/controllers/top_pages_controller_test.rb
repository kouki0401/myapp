require 'test_helper'

class TopPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "KO-fitness"
  end

  test "should get reserve" do
    get reserve_path
    assert_response :success
    assert_select "title", "Reservation | #{@base_title}"
  end

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get trainer" do
    get trainer_path
    assert_response :success
    assert_select "title", "Trainer | #{@base_title}"
  end

  test "should get price" do
    get price_path
    assert_response :success
    assert_select "title", "Price | #{@base_title}"
  end

  test "should get store" do
    get store_path
    assert_response :success
    assert_select "title", "Store | #{@base_title}"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Q&A | #{@base_title}"
  end

end
