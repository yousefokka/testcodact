require 'test_helper'

class IdeahomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ideahome_index_url
    assert_response :success
  end

end
