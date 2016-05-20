class CreateAdminTops < ActiveRecord::Migration
  def change
    create_table :admin_tops do |t|
      t.string :title
      t.string :description
      t.string :area
      t.timestamps
    end
  end
end
