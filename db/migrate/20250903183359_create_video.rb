class CreateVideo < ActiveRecord::Migration[7.0]
  def change
    create_table :videos do |t|
      t.string :video_id
      t.timestamps
    end
  end
end
