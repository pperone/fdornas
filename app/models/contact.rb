class Contact < ApplicationRecord
  has_many :contact_items

  has_one_attached :image

  accepts_nested_attributes_for :contact_items, allow_destroy: true
end
