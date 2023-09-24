class AddPlayedToHands < ActiveRecord::Migration[7.0]
  def change
    add_column :hands, :played, :boolean
  end
end
