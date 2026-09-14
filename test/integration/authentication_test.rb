require "test_helper"

class AuthenticationTest < ActionDispatch::IntegrationTest
  test "renders authentication pages" do
    get new_user_session_path
    assert_response :success

    get new_user_registration_path
    assert_response :success

    get new_user_password_path
    assert_response :success
  end
end
