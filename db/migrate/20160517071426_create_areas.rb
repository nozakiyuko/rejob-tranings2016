class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :area_name
      t.timestamps nul: false
    end
  end
end
