class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :user_id
      t.integer :type_number
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
