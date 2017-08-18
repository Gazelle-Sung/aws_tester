class CreateDailyQuests < ActiveRecord::Migration
  def change
    create_table :daily_quests do |t|
      t.integer :user_id
      t.text :content
      t.boolean :did
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
