require 'test_helper'

class UserManagemntControllerTest < ActionController::TestCase
  test "should get invite" do
    get :invite
    assert_response :success
  end

  test "should get search" do
    get :search
    assert_response :success
  end

  test "should get search_results" do
    get :search_results
    assert_response :success
  end

  test "should get invite_confirm" do
    get :invite_confirm
    assert_response :success
  end

end
