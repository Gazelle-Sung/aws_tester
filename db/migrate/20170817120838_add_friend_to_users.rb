class AddFriendToUsers < ActiveRecord::Migration
  def change
    add_foreign_key :friends, :users, column: :sender_id, primary_key: :id
    add_foreign_key :friends, :users, column: :receiver_id, primary_key: :id
  end
end
