class CreateMypages < ActiveRecord::Migration
  def change
    create_table :mypages do |t|
      t.string :name
      t.string :kana
      t.integer :age
      t.string :sex
      t.timestamps nul: false
    end
  end
end
