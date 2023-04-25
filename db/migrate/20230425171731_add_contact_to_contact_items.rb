class AddContactToContactItems < ActiveRecord::Migration[7.0]
  def change
    add_reference :contact_items, :contact, null: false, foreign_key: true
  end
end
