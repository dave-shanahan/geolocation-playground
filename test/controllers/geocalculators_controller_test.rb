require "test_helper"

class GeocalculatorsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get geocalculate_url
    assert_response :success
  end
end
