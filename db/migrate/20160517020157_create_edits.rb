class CreateEdits < ActiveRecord::Migration
  def change
    create_table :edits do |t|
      t.string :title
      t.string :description
      t.string :area
      t.timestamps
    end
  end
end
