# name: bauth
# about: Bloomberg OAuth
# version: 0.1
# authors: Régis Hanol

require_dependency 'auth/open_id_authenticator'

class BloombergAuthenticator < ::Auth::OpenIdAuthenticator

  def after_authenticate(auth)
    puts "after_authenticate"
    puts "auth"
    p auth
    super
  end

  def after_create_account(user, auth)
    puts "after_create_account"
    puts "user"
    p user
    puts "auth"
    p auth
    super
  end

end

authenticator = BloombergAuthenticator.new("bloomberg", "https://bauth.bloomberg.com/user", trusted: true)

auth_provider title: "Bloomberg",
              authenticator: authenticator,
              message: "Bloomberg message"
