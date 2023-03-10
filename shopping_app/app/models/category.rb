class Category < ApplicationRecord
  has_many :items
  has_one :rating,  as: :rateable

  default_scope -> { order(created_at: :asc) }

  scope :active, -> { where(status: true) }
  scope :inactive, -> { where(status: false) }
end
