module Users
  class OmniauthCallbacksController < Devise::OmniauthCallbacksController
    def google_oauth2
      authenticate_from_provider("Google")
    end

    def facebook
      authenticate_from_provider("Facebook")
    end

    def failure
      redirect_to new_user_session_path, alert: "Sign-in was cancelled or could not be completed."
    end

    private

    def authenticate_from_provider(label)
      auth = request.env["omniauth.auth"]
      return redirect_to(new_user_session_path, alert: "Your #{label} account did not provide an email address.") if auth.blank? || auth.info.email.blank?
      identity = User.find_by(provider: auth.provider, uid: auth.uid)
      user = identity
      if user.nil?
        existing = User.find_by(email: auth.info.email)
        user = existing if existing && trusted_email?(auth)
        return redirect_to(new_user_session_path, alert: "Please sign in with your existing email and password before connecting #{label}.") if existing
      end
      user ||= build_user(auth)
      user.update!(provider: auth.provider, uid: auth.uid, avatar_url: auth.info.image) unless identity
      sign_in_and_redirect user, event: :authentication
    rescue ActiveRecord::RecordInvalid
      redirect_to new_user_session_path, alert: "We could not safely create your #{label} account. Please sign in with email first."
    end

    def build_user(auth)
      info = auth.info
      User.create!(email: info.email,
        password: Devise.friendly_token(32), first_name: info.first_name.presence,
        last_name: info.last_name.presence, provider: auth.provider, uid: auth.uid,
        avatar_url: info.image)
    end

    def trusted_email?(auth)
      auth.provider == "google_oauth2" && auth.extra&.raw_info&.email_verified != false
    end
  end
end
