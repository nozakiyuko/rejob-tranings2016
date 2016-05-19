class CreateAdminLists < ActiveRecord::Migration
  def change
    create_table :admin_lists do |t|

      t.timestamps
    end
  end
end
