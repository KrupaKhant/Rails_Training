class Item < ApplicationRecord
  belongs_to :category, optional: true
  has_many :item_modifiers
  has_many :modifiers, through: :item_modifiers
  has_one :rating,  as: :rateable

  default_scope -> { order(created_at: :asc) }

  scope :active, -> { where(status: true) }
  scope :inactive, -> { where(status: false) }
  scope :good_rating, -> { joins(:rating).where('ratings.rating >= ?', 4) }
  scope :average_rating, -> { joins(:rating).where('ratings.rating < ?', 4) }
end
