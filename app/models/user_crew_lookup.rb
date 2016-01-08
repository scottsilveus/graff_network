class UserCrewLookup < ActiveRecord::Base
	belongs_to :user
	belongs_to :crew

	validates :user_id, presence: true
	validates :crew_id, presence: true
end
