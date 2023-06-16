require "test_helper"

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get order_num" do
    get admin_order_num_url
    assert_response :success
  end
end
