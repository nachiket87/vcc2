class Product < ApplicationRecord
  validates :rating, numericality: { only_integer: true, less_than_or_equal_to: 5, greater_than_or_equal_to: 0 }
  attribute :in_card, :boolean, default: false
  has_one_attached :photo
end
