class Api::SecretKey < ApplicationRecord
  include Restable::SecureToken

  belongs_to :account
end
