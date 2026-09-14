# BooklyPro OAuth setup

OAuth credentials are optional; the app boots normally without them.

## Google

Create OAuth 2.0 Web Application credentials in Google Cloud Console and set `GOOGLE_CLIENT_ID` and `GOOGLE_CLIENT_SECRET` locally. Add this callback URL:

`http://localhost:3000/users/auth/google_oauth2/callback`

## Facebook

Create an app in Meta for Developers, add Facebook Login, and set `FACEBOOK_APP_ID` and `FACEBOOK_APP_SECRET` locally. Add this callback URL:

`http://localhost:3000/users/auth/facebook/callback`

Use localhost development settings only. Never commit these values.
