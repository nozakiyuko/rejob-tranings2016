class CreateAdminTops < ActiveRecord::Migration
  def change
    create_table :admin_tops do |t|

      t.timestamps
    end
  end
end
