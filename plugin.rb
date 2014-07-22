# name: bauth
# about: Bloomberg OAuth
# version: 0.1
# authors: Régis Hanol

require_dependency 'auth/open_id_authenticator'

class BloombergAuthenticator < ::Auth::OpenIdAuthenticator

  def after_authenticate(auth)
    Rails.logger.info "after_authenticate"
    Rails.logger.info "auth"
    Rails.logger.info auth.inspect
    super
  end

  def after_create_account(user, auth)
    Rails.logger.info "after_create_account"
    Rails.logger.info "user"
    Rails.logger.info user.inspect
    Rails.logger.info "auth"
    Rails.logger.info auth.inspect
    super
  end

end

authenticator = BloombergAuthenticator.new("bloomberg", "https://bauth.bloomberg.com/user", trusted: true)

auth_provider title: "Bloomberg",
              authenticator: authenticator,
              message: "Bloomberg message"
