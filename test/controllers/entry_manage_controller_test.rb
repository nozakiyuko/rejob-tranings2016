require 'test_helper'

class EntryManageControllerTest < ActionController::TestCase
  test "should get do" do
    get :do
    assert_response :success
  end

end
