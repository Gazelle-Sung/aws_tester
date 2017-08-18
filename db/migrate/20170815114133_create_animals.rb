class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.integer :user_id
      t.integer :species
      t.string :name
      t.integer :character
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
