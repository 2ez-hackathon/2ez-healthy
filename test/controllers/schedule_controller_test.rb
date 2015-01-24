require 'test_helper'

class ScheduleControllerTest < ActionController::TestCase
  test "should get user_input" do
    get :user_input
    assert_response :success
  end

end
