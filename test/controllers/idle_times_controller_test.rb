require 'test_helper'

class IdleTimesControllerTest < ActionController::TestCase
  setup do
    @idle_time = idle_times(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:idle_times)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create idle_time" do
    assert_difference('IdleTime.count') do
      post :create, idle_time: { day: @idle_time.day, hour: @idle_time.hour, idle_flag: @idle_time.idle_flag, person_name: @idle_time.person_name }
    end

    assert_redirected_to idle_time_path(assigns(:idle_time))
  end

  test "should show idle_time" do
    get :show, id: @idle_time
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @idle_time
    assert_response :success
  end

  test "should update idle_time" do
    patch :update, id: @idle_time, idle_time: { day: @idle_time.day, hour: @idle_time.hour, idle_flag: @idle_time.idle_flag, person_name: @idle_time.person_name }
    assert_redirected_to idle_time_path(assigns(:idle_time))
  end

  test "should destroy idle_time" do
    assert_difference('IdleTime.count', -1) do
      delete :destroy, id: @idle_time
    end

    assert_redirected_to idle_times_path
  end
end
