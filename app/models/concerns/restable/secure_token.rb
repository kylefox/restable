module Restable::SecureToken
  extend ActiveSupport::Concern

  included do
    has_secure_token
    validates :token, uniqueness: true
    validates :token, presence: true, on: :update
  end
end
