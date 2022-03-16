class Customer < ApplicationRecord
  # Validation
  validates :full_name, presence: true
  validates :phone_number, length: { minimum: 10 }

  # Active Storage Image Handling
  has_one_attached :image
end
