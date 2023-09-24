class RemovePlayedFromCards < ActiveRecord::Migration[7.0]
  def change
    remove_column :cards, :played, :boolean
  end
end
