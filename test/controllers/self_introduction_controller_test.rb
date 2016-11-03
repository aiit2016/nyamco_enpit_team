require 'test_helper'

class SelfIntroductionControllerTest < ActionController::TestCase
  test "should get ohashi" do
    get :ohashi
    assert_response :success
  end

end
