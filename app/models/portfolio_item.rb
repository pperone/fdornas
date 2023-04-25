class PortfolioItem < ApplicationRecord
  belongs_to :portfolio
  has_one_attached :image
end
