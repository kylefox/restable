class Api::SecretKey < ApplicationRecord
  include Restable::SecureToken

  belongs_to :account

  def self.secure_token_prefix
    nil
  end
end
