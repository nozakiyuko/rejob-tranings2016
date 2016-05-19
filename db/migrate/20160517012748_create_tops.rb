class CreateTops < ActiveRecord::Migration
  def change
    create_table :tops do |t|
      t.string :title
      t.string :description
      t.timestamps nul: false
    end
  end
end
