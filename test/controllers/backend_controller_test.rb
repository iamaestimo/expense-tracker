require "test_helper"

class BackendControllerTest < ActionDispatch::IntegrationTest
  test "should get dashboard" do
    get backend_dashboard_url
    assert_response :success
  end
end
