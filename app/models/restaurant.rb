class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CATEGORY = %w(chinese, italian, japanese, french, belgian)
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: CATEGORY }
  validates :rating, inclusion: { in: (1..5) }
end
