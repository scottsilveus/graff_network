class UserFaveUserLookup < ActiveRecord::Base
	belongs_to :follower, class_name: "User", foreign_key: "follower_id"
	belongs_to :followee, class_name: "User", foreign_key: "followee_id"

	validates :follower_id, presence: true
	validates :followee_id, presence: true
end
