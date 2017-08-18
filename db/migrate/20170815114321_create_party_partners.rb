class CreatePartyPartners < ActiveRecord::Migration
  def change
    create_table :party_partners do |t|
      t.integer :user_id
      t.integer :party_quest_id
      t.boolean :did
      t.references :user, index: true, foreign_key: true
      t.references :party_quest, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
