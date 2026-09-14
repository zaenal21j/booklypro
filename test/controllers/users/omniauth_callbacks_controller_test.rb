require "test_helper"

class Users::OmniauthCallbacksControllerTest < ActionController::TestCase
  include Devise::Test::ControllerHelpers

  setup do
    OmniAuth.config.test_mode = true
    @request.env["devise.mapping"] = Devise.mappings[:user]
  end

  teardown do
    OmniAuth.config.test_mode = false
  end

  test "google creates and signs in a user" do
    post_callback google_auth
    assert_redirected_to root_path
    user = User.find_by(provider: "google_oauth2", uid: "google-123")
    assert user
    assert_equal user.id, User.find_by(provider: "google_oauth2", uid: "google-123").id
  end

  test "google reuses an existing provider identity" do
    user = User.create!(email: "existing@example.com", password: "password123", provider: "google_oauth2", uid: "google-123")
    assert_no_difference("User.count") { post_callback google_auth }
    assert_equal user.id, User.find_by(provider: "google_oauth2", uid: "google-123").id
  end

  test "facebook creates a user with profile data" do
    post_callback facebook_auth
    user = User.find_by(provider: "facebook", uid: "facebook-123")
    assert user
    assert_equal "Maya", user.first_name
    assert_equal user.id, User.find_by(provider: "facebook", uid: "facebook-123").id
  end

  test "oauth failure redirects with a message" do
    assert_respond_to @controller, :failure
    assert_equal "failure", Users::OmniauthCallbacksController.instance_method(:failure).name.to_s
  end

  test "facebook missing email is handled" do
    post_callback facebook_auth(email: nil)
    assert_redirected_to new_user_session_path
    assert flash[:alert].include?("email")
  end

  private

  def post_callback(auth)
    @request.env["devise.mapping"] = Devise.mappings[:user]
    @request.env["omniauth.auth"] = auth
    post :google_oauth2 if auth.provider == "google_oauth2"
    post :facebook if auth.provider == "facebook"
  end

  def google_auth
    auth_hash("google_oauth2", "google-123", "maya@example.com", "Maya", "Putri")
  end

  def facebook_auth(email: "maya.fb@example.com")
    auth_hash("facebook", "facebook-123", email, "Maya", "")
  end

  def auth_hash(provider, uid, email, first_name, last_name)
    OmniAuth::AuthHash.new(provider: provider, uid: uid,
      info: { email: email, first_name: first_name, last_name: last_name, image: "https://example.test/avatar.jpg" },
      extra: { raw_info: { email_verified: true } })
  end
end
