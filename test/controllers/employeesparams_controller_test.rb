require 'test_helper'

class EmployeesparamsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get employeesparams_index_url
    assert_response :success
  end

end
