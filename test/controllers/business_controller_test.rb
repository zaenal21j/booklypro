require "test_helper"

class BusinessControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    @user = User.create!(email: "dashboard-test@example.com", password: "password123", password_confirmation: "password123")
  end

  test "redirects guests to sign in" do
    get business_dashboard_path
    assert_redirected_to new_user_session_path
  end

  test "allows signed in users" do
    sign_in @user
    get business_dashboard_path
    assert_response :success
  end
end
