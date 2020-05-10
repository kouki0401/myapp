require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    get root_path
    assert_template 'top_pages/home'
    assert_select "a[href=?]", root_path, count: 3
    assert_select "a[href=?]", reserve_path
    assert_select "a[href=?]", trainer_path
    assert_select "a[href=?]", price_path
    assert_select "a[href=?]", store_path
    assert_select "a[href=?]", help_path
  end
end
