class Account < ApplicationRecord
  validates :name, presence: true
end
