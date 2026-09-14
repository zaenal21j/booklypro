require "test_helper"

class DeviseAuthenticationTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "email password login works" do
    user = User.create!(email: "password@example.com", password: "password123", password_confirmation: "password123")
    post user_session_path, params: { user: { email: user.email, password: "password123" } }
    assert_redirected_to root_path
  end

  test "business dashboard is protected when signed out" do
    get business_dashboard_path
    assert_redirected_to new_user_session_path
  end
end
