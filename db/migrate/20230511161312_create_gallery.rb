class CreateGallery < ActiveRecord::Migration[7.0]
  def change
    create_table :galleries do |t|
      t.timestamps
    end
  end
end
