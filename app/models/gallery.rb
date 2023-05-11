class Gallery < ApplicationRecord
  has_many :gallery_items

  accepts_nested_attributes_for :gallery_items, allow_destroy: true
end
