class Modifier < ApplicationRecord
  has_many :items, through: :item_modifiers
  has_one :rating,  as: :rateable

  default_scope -> { order(created_at: :asc) }
end
