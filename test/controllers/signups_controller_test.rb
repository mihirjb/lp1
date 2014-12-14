require 'test_helper'

class SignupsControllerTest < ActionController::TestCase
  test "should get fullname" do
    get :fullname
    assert_response :success
  end

  test "should get email" do
    get :email
    assert_response :success
  end

end
