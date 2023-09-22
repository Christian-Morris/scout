class CreateSlams < ActiveRecord::Migration[7.0]
  def change
    create_table :slams do |t|

      t.timestamps
    end
  end
end
