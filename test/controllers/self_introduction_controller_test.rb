require 'test_helper'

class SelfIntroductionControllerTest < ActionController::TestCase
  test "should get ninomiya" do
    get :ninomiya
    assert_response :success
  end

end
