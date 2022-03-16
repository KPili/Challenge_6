class Customer < ApplicationRecord
  # Validation
  validates :full_name, presence: true
  validates :phone_number, length: { minimum: 10 }
  validates :email_address, with: Devise.email_regexp
end
