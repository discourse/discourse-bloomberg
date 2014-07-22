# name: discourse-bloomberg
# about: Bloomberg's OAuth Plugin
# version: 0.1
# authors: Régis Hanol

require_dependency 'auth/open_id_authenticator'

authenticator = ::Auth::OpenIdAuthenticator.new("bloomberg", "https://bauth.bloomberg.com/user", trusted: true)

auth_provider title: "Bloomberg",
              authenticator: authenticator,
              message: "Bloomberg"
