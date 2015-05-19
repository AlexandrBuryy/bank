require 'test_helper'

class CreditDepartmentControllerTest < ActionController::TestCase
  test "should get add_credit" do
    get :add_credit
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get delete_credit" do
    get :delete_credit
    assert_response :success
  end

  test "should get details" do
    get :details
    assert_response :success
  end

end
