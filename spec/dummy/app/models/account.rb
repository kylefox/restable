class Account < ApplicationRecord
  validates :name, presence: true
  has_many :api_secret_keys, dependent: :delete_all, class_name: "Api::SecretKey"
end
