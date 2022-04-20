class AuthenticateUser < ApplicationService

  def initialize(email, password)
    @email = email
    @password = password
  end

  private

  attr_accessor :email, :password

  def call
    JsonWebToken.encode(user_id: user.id) if user
  end

  def user
    Rails.logger.info "EMAIL::#{email}"
    user = User.find_by(email: email)
    Rails.logger.info "User::#{user}"
    return user if user&.authenticate(password)
    errors.add :user_authentication, 'invalid credentials'
  end
end
