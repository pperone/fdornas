class GalleryItem < ApplicationRecord
  belongs_to :gallery
  has_one_attached :cover
  has_many_attached :pictures
end
