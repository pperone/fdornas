class CreateAbout < ActiveRecord::Migration[7.0]
  def change
    create_table :abouts do |t|
      t.text :text

      t.timestamps
    end
  end
end
