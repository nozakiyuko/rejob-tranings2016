class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :description
      t.string :area
      t.integer :picture_id
      t.timestamps nul: false
    end
  end
end
