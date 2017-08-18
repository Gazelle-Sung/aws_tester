class PartyQuest < ActiveRecord::Base
  belongs_to :user
  has_many :party_quests
end
