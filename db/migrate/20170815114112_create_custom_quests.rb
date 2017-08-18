class CreateCustomQuests < ActiveRecord::Migration
  def change
    create_table :custom_quests do |t|
      t.integer :user_id
      t.timestamp :due_time
      t.text :content
      t.boolean :did

      t.timestamps null: false
    end
  end
end
