class CreateGalleryItem < ActiveRecord::Migration[7.0]
  def change
    create_table :gallery_items do |t|
      t.string :title

      t.timestamps
    end
  end
end
