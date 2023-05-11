class AddReferenceToGalleryItem < ActiveRecord::Migration[7.0]
  def change
    add_reference :gallery_items, :gallery, null: false, foreign_key: true
  end
end
