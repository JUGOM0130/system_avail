require "test_helper"

class NohinshosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get nohinshos_index_url
    assert_response :success
  end
end
