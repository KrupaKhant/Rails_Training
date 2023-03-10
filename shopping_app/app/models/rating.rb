class Rating < ApplicationRecord
  belongs_to :rateable, polymorphic: true

  default_scope -> { order(created_at: :asc) }

  validates :rating, presence: true, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
end
