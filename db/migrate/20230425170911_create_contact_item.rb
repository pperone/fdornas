class CreateContactItem < ActiveRecord::Migration[7.0]
  def change
    create_table :contact_items do |t|
      t.string :title
      t.string :info

      t.timestamps
    end
  end
end
