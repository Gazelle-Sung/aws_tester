class PartyPartner < ActiveRecord::Base
  belongs_to :user
  belongs_to :party_quest
end
