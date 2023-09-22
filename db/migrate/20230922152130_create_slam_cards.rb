class CreateSlamCards < ActiveRecord::Migration[7.0]
  def change
    create_table :slam_cards do |t|
      t.references :hand, null: false, foreign_key: true
      t.references :slam, null: false, foreign_key: true

      t.timestamps
    end
  end
end
