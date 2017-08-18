class CreatePartyQuests < ActiveRecord::Migration
  def change
    create_table :party_quests do |t|
      t.integer :user_id
      t.timestamp :due_time
      t.text :content
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
