require "test_helper"

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal "Rails Tutorial", full_title
    assert_equal "Contact | Rails Tutorial", full_title("Contact")
  end
end
