require 'test_helper'

class StaticControllerTest < ActionDispatch::IntegrationTest
  test "should get hello" do
    get static_hello_url
    assert_response :success
  end

end
