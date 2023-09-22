class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.integer :top_number
      t.integer :bottom_number
      t.boolean :played

      t.timestamps
    end
  end
end
