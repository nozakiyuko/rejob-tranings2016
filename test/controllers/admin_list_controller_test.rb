require 'test_helper'

class AdminListControllerTest < ActionController::TestCase
  test "should get do" do
    get :do
    assert_response :success
  end

end
