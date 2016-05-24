class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :kana
      t.string :sex
      t.integer :age
      t.string :pass

      t.timestamps
    end
  end
end
