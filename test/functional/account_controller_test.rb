require 'test_helper'

class AccountControllerTest < ActionController::TestCase
  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get confirm" do
    get :confirm
    assert_response :success
  end

  test "should get list" do
    get :list
    assert_response :success
  end

end
