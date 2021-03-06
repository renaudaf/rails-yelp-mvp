class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :restaurant, presence: true
  validates :rating, inclusion: { in: 0..5,
    message: "%{value} is not a valid rating" }
  validates :rating, numericality: true
end
