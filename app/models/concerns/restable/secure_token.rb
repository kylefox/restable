module Restable::SecureToken
  extend ActiveSupport::Concern

  included do
    has_secure_token
    validates :token, uniqueness: true
    validates :token, presence: true, on: :update

    def self.secure_token_prefix
      table_name.singularize
    end

    def self.generate_unique_secure_token(length:)
      [secure_token_prefix, super(length: length)].compact.join("_")
    end
  end
end
