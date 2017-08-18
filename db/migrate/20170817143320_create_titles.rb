class CreateTitles < ActiveRecord::Migration
  def change
    create_table :titles do |t|
      t.integer :user_id
      t.integer :type_number
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
