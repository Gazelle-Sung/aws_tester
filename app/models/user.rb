class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    has_many :custom_quests
    has_many :daily_quests
    has_many :party_quests
    has_many :party_partners
    has_many :animals
    has_many :items
    has_many :equips
    has_many :friends
end
