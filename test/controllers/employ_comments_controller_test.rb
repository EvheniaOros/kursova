require 'test_helper'

class EmployCommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get employ_comments_index_url
    assert_response :success
  end

end
