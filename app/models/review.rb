class Review < ApplicationRecord
  # reviews belong to parent class = restaurants
  belongs_to :restaurant
  # a review must contain content and a rating
  validates :content, :rating, presence: :true
  # rating must be between 0-5 and be an integer
  validates :rating, inclusion: { in: 0..5 }, numericality: { only_integer: true }
end
