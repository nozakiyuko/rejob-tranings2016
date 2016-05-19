class CreateEntryCompletes < ActiveRecord::Migration
  def change
    create_table :entry_completes do |t|


      t.timestamps
    end
  end
end
