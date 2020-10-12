require 'test_helper'

class JobhomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get jobhome_index_url
    assert_response :success
  end

end
