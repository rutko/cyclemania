require 'test_helper'

class SubPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get sub_pages_about_url
    assert_response :success
  end

end
