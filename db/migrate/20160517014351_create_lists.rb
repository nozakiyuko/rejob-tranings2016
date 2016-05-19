class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.integer :job_id
      t.integer :area_id
      t.timestamps nul: false
    end
  end
end
