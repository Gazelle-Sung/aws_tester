class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :category
      t.integer :type_num
      t.string :name
      t.integer :need_coin
      t.string :description
      t.float :coin_percent
      t.float :exp_percent
      t.float :other_percent

      t.timestamps null: false
    end
  end
end
