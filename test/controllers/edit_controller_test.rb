require 'test_helper'

class EditControllerTest < ActionController::TestCase
  test "should get do" do
    get :do
    assert_response :success
  end

end
