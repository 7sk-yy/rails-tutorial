require "test_helper"

class SiteLayoutTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:michael)
  end

  test "before login layout links" do
    get root_path
    assert_response :success
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
    assert_select "title", full_title

    get about_path
    assert_select "title", full_title("About")

    get contact_path
    assert_select "title", full_title("Contact")
  end

  test "after login layout links" do
    log_in_as(@user)

    get root_path
    assert_response :success
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", users_path
    assert_select "a[href=?]", user_path(@user)
    assert_select "a[href=?]", edit_user_path(@user)
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
    assert_select "title", full_title

    get about_path
    assert_select "title", full_title("About")

    get contact_path
    assert_select "title", full_title("Contact")
  end
end
