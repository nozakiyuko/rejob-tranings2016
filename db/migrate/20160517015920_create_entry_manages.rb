class CreateEntryManages < ActiveRecord::Migration
  def change
    create_table :entry_manages do |t|

      t.timestamps
    end
  end
end
