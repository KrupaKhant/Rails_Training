class ItemModifier < ApplicationRecord
  belongs_to :item
  belongs_to :modifier

  default_scope -> { order(created_at: :asc) }
end
