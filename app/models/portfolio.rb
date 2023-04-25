class Portfolio < ApplicationRecord
  has_many :portfolio_items

  accepts_nested_attributes_for :portfolio_items, allow_destroy: true
end
